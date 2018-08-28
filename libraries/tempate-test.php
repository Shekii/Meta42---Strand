<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include('template.class.php');


class TemplateTest extends PHPUnit_Framework_Testcase {

private $template;

	public function setUp() {
		$template = new Template();

	}
}

?>