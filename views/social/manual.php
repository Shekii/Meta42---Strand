	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<div class="row">
		<div class="col-xs-12">
			<h4>Share</h4>
			<p>Add your own update and image to multiple accounts. You can also send it to queue if you do not want to send it immediately.</p>
		</div>
	</div>

	<form action="<?php echo BASE_URL;?>social/post/<?php echo $current;?>" method="post" enctype="multipart/form-data">
		<div class="row spacer-sm">
			<div class="col-xs-6">
			<p>Select which accounts you would like to post to?</p>
				<select class="image-picker" multiple="multiple" name="accounts[]">
				<?php foreach ($accounts as $account):?>
					<option data-img-src="<?php echo $account['image'];?>" data-img-label="<?php echo $account['name'];?>" data-img-type="<?php echo $account['type'];?>" value="<?php echo $account['id'];?>"  <?php if (!empty($account['current'])):?>selected<?php endif;?>><?php echo $account['name'];?> (<?php echo $account['type'];?>)</option>
				<?php endforeach;?>
				</select>
			</div>


		</div>

		<div class="row spacer-sm">
					<div class="col-xs-6 col-md-4">
						<textarea rows=10  type="email"  class="form-control" id="message" maxlength=140 name="message" placeholder="What would you like to share?"></textarea>
					</div>


				<div class="col-xs-6 col-md-4">
				<a href="#" class="list-group-item active">Top 5 Trending Tags</a>
					  </a>
					<ul class="list-group" id="tags">
				<?php
					for ($i = 0; $i < 20; $i++) {
						echo "

							<li class='list-group-item' id='{$i}' value={$trends[$i]->name}>
								<a href='#'>{$trends[$i]->name}</a>
								<a href={$trends[$i]->url}  target='_blank' style='float:right;margin-left: 10px;'>
									<span class='glyphicon glyphicon-new-window' aria-hidden='true'></span>
								</a>
								<a href='#' style='float:right'>
									<span class='glyphicon glyphicon-plus-sign' aria-hidden='true'></span>
								</a>									
							</li>";	
					}			
				?>		
				</ul>			
				</div>
				<div class="col-xs-6 col-md-4">

					<div class="fileinput fileinput-new" data-provides="fileinput">
					  <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px;"></div>
					  <div>
						<span class="btn btn-default btn-file"><span class="fileinput-new">Select image</span><span class="fileinput-exists">Change</span><input type="file" name="image" accept="image/gif, image/jpeg, image/png"></span>
						<a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
					  </div>
					</div>

				</div>



				<div class="col-xs-6 col-md-4">
					
				</div>		
		</div>


		<div class="row spacer-sm" id="date" style="display:none;">
			<div class="col-xs-6">
				<p>
					<label for="pickDate">Choose a specific date:</label>
					<br>
					<input type="date" name="pickDate">

				</p>
				<p>
					<label for="specificTime">Choose a time to post:</label>
					<br>
					
					<input type="time" name="specificTime" onblur="this.value.replace(/:/g,'');">

				</p>
			</div>
		</div>

		<?php


			global $dbh;
			$query = $dbh->prepare("SELECT * FROM schedules WHERE ? = companyID");
			$query->execute(array($account['companyid']));

			$names = $query->fetchAll();
			$schId = 1;



		?>

		<div class="row spacer-sm" id="schName" style="display:none;">
			<div class="col-xs-12">
				<label for="scheduleSelect">Pick a schedule</label>
				<br>

				<input type="hidden" name="scheduleId" value = "0" id="scheduleId">

				<select name="scheduleSelect" class="selectpicker">

				<?php
					foreach ($names as $n) 	{
				?>

				<option value= <?php echo $schId; ?>> <?php echo $n['scheduleName']; ?></option> 

				<?php 

				$schId++;

				}

				?>
				</select>
			</div>
		</div>


		<div class="row spacer-sm" >
			<div class="col-xs-12">
				<button name="when" type="submit" value="now" class="btn btn-primary confirm">Share Now</button>

				<button name="when" type="submit" id="saveSch" value="queue" style="display: none;" class="btn btn-border" onclick="$(this).text('Adding...')">Save Schedule</button>

				<button name="when" type="submit" value="specific" class="btn btn-border" onclick="$(this).text('Adding...')" style="display: none; " id="saveQueue">Save Queue</button>

				<a href="#" type="submit" value="queue" class="btn btn-border" id="addSch">Add to Schedule</a>

				<a href="#" type="submit" class="btn btn-border" id="addQueue">Add to Queue</a>

			</div>
		</div>

	</form>

	<script>

	$(function() {

	function pad (str) {
	  str = str.toString();
	  return ('#' + str);
	}
		$('#tags li').click(function(e) {

			var text = $(this).text();
			var trimmedText = $.trim(text);

			if (trimmedText.charAt(0) != '#') {
				trimmedText = pad(trimmedText);
			}

		$('#message').append(trimmedText + " ");
		$(this).slideUp("fast");


		})

		$('#tags').each(function() {
			 $(this).children('li').slice(5).hide(); 
		});		
		if ($('select option').is(':enabled')) {
		var schedule = false;

		$('#addSch').click(function(e) {

			schedule = true;

			if (schedule == true) {

				e.preventDefault();

			$('#schName').slideDown("slow");
			$('#saveSch').slideDown("slow");
			$('#addSch').fadeOut("fast");

		} else {
			$('#schName').slideUp("slow");
			$('#saveSch').slideUp("slow");
			$('#addSch').fadeIn("fast");

			schedule = false;

		}

		})

		$('#addQueue').click(function(e) {

				$('#date').fadeIn("slow");
				$('#addQueue').hide();
				$('#saveQueue').show("slow");

			
		})

	}
});


	</script>	
