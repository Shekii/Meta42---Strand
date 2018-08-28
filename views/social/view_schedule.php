	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<div class="row">
		<div class="col-xs-12">
			<h4>View Schedules <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span></h4>
			<p>Select a schedule name from a dropdown list to view the details.</p>
		</div>
	</div>
<div class="row">
	<div class="col-xs-12">
		<form action="<?php echo BASE_URL;?>social/view_schedule/<?php echo $current;?>" method="post" enctype="multipart/form-data">
			<div class="row spacer-sm" id="schName">
				<div class=".col-xs-6">
					<label for="scheduleSelect">Pick a schedule</label>
					<br>
				

					<input type="hidden" name="scheduleId" value = "0" id="scheduleId">

					<select name="scheduleSelect" id="scheduleSelect" class="selectpicker" >

					<?php

						foreach ($schedule as $s) {
					?>

					<option value= <?php echo $s[0]; ?> > <?php echo $s[2]; ?></option> 

					<?php 
					} //disabled

					?>
					</select>
				</div>

			</div>
			<div class="row spacer-sm">
				<div class="col-xs-6">
					<button name="show" id="btn-show" type="submit" class="btn btn-info">See Schedule</button>
				</div>
				<div class="col-xs-6">
					<button name="show" id="btn-delete" type="submit" class="btn btn-danger">Delete Schedule</button>
				</div>	
			</div>			
		</form>
	</div>
</div>



<div class="row spacer-sm">
	<div class="col-xs-6 col-sm-3">
	<a href="#" class="list-group-item active">
		    Monday
		  </a>
		<div class="list-group" id="1">
<!-- 		  <a href="#" class="list-group-item"></a> -->
		</div>
	</div>
	<div class="col-xs-6 col-sm-3">
	 <a href="#" class="list-group-item active">
		    Tuesday
		  </a>
		<div class="list-group" id="2">
		</div>
	</div>
	<div class="col-xs-6 col-sm-3">
	 <a href="#" class="list-group-item active">
		    Wednesday
		  </a>
		<div class="list-group" id="3">
		 
		</div>
	</div>	
</div>
<div class="row spacer-sm">
	<div class="col-xs-6 col-sm-3">
	 <a href="#" class="list-group-item active">
		    Thursday
		  </a>
		<div class="list-group" id="4">
		</div>
	</div>

	<div class="col-xs-6 col-sm-3">
	 <a href="#" class="list-group-item active">
		    Friday
		  </a>
		<div class="list-group" id="5"> 
		</div>
	</div>		
	<div class="col-xs-6 col-sm-3">
	<a href="#" class="list-group-item active">
		    Saturday
		  </a>
		<div class="list-group" id="6">
		</div>
	</div>		

</div>

<div class="row spacer-sm">
	<div class="col-xs-6 col-sm-3">
	<a href="#" class="list-group-item active">
		    Sunday
		  </a>
		<div class="list-group" id="7">
		  
		</div>
	</div>	

</div>	


	

	<script>

	$(document).ready(function() {

		$('select option:first-child').attr('disabled', 'disabled');

		$( "#btn-show" ).click(function(e) {
			var select = $('#scheduleSelect').val();

			e.preventDefault();
			for (var i = 1; i < 8; i++) {

		

			$.ajax({
  				type: "POST",
  				async: false,
  				dataType: 'json',
 			 	url: <?php echo "'" . $BASE_URL . "controllers/schedule-callback.php" . "'"?>,
 				data: { scheduleVal: select,
 						dayCurrent: i,
 						type: 'view' 		 
 				  },
 				  success: function(result) {

 				  }
			})

		.done(function(data) {		

			 var contentTime = new Array();
			 $('#' + i).empty();
			 for (var j = 0; j < data.length; j++) {
			 	contentTime[j] = data[j].time;

			 	if (contentTime[j].length < 4)
			 		contentTime[j] = "0" + contentTime[j];

			 	contentTime[j] = contentTime[j].substr(0, 2) + ":" + contentTime[j].substr(2);			 	

			 	$('#' + i).append("<a href='#' class='list-group-item'>" + contentTime[j] + "</a>").hide().slideDown("fast");

			 	console.log(contentTime[j]);
			 }


		})	
		  .fail(function(result) {
		  	alert("FAILED" + result);
		 })	

		 }		
		})

	$( "#btn-delete" ).click(function(e) {
			var select = $('#scheduleSelect').val();

		if ($('select option').is(':enabled')) {
			var dlt = "delete";

			e.preventDefault();

			$.ajax({
  				type: "POST",
  				async: false,
  				dataType: 'json',
 			 	url: <?php echo "'" . $BASE_URL . "controllers/schedule-callback.php" . "'"?>,
 				data: { 
 					type: 'delete',
 					scheduleVal: select,
 				  },
			})

		.done(function(data) {	
			

		})

		 .fail(function(result) {
		  	window.location.href = window.location.href;
		  	history.go(0);
		  	location.reload();

		  	console.log(result);
		 })	

		} else {
			alert ("You must select something in the list.");
		}
	})

	});


	</script>






