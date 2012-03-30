<?php
class PostsController extends AppController {

	var $name = 'Posts';
	var $scaffold;

	function import() {
		$messages = $this->Post->import('posts.csv');
                $this->set('messages', $messages);
	}
}
?>
