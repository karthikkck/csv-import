<?php
/* Post Test cases generated on: 2012-03-30 17:06:52 : 1333107412*/
App::import('Model', 'Post');

class PostTestCase extends CakeTestCase {
	var $fixtures = array('app.post');

	function startTest() {
		$this->Post =& ClassRegistry::init('Post');
	}

	function endTest() {
		unset($this->Post);
		ClassRegistry::flush();
	}

}
?>