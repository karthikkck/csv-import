<?php
class Post extends AppModel {
	var $name = 'Post';

	function import($filename) {
 		// to avoid having to tweak the contents of
 		// $data you should use your db field name as the heading name
		// eg: Post.id, Post.title, Post.description

		// set the filename to read CSV from
		$filename = TMP . 'uploads' . DS . 'Post' . DS . $filename;

		// open the file
 		$handle = fopen($filename, "r");

 		// read the 1st row as headings
 		$header = fgetcsv($handle);

		// create a message container
		$return = array(
			'messages' => array(),
			'errors' => array(),
		);

 		// read each data row in the file
                $i = 0;
 		while (($row = fgetcsv($handle)) !== FALSE) {
 			$i++;
 			$data = array();

 			// for each header field
 			foreach ($header as $k=>$head) {
 				// get the data field from Model.field
 				if (strpos($head,'.')!==false) {
	 				$h = explode('.',$head);
	 				$data[$h[0]][$h[1]]=(isset($row[$k])) ? $row[$k] : '';
				}
 				// get the data field from field
				else {
	 				$data['Post'][$head]=(isset($row[$k])) ? $row[$k] : '';
				}
 			}

			// see if we have an id
 			$id = isset($data['Post']['id']) ? $data['Post']['id'] : 0;

			// we have an id, so we update
 			if ($id) {
 				// there is 2 options here,

				// option 1:
				// load the current row, and merge it with the new data
	 			//$this->recursive = -1;
	 			//$post = $this->read(null,$id);
	 			//$data['Post'] = array_merge($post['Post'],$data['Post']);

				// option 2:
	 			// set the model id
	 			$this->id = $id;
			}

			// or create a new record
			else {
	 			$this->create();
			}

			// see what we have
			// debug($data);

 			// validate the row
			$this->set($data);
			if (!$this->validates()) {
				$this->_flash('warning');
				$return['errors'][] = __(sprintf('Post for Row %d failed to validate.',$i), true);
			}

 			// save the row
			if (!$error && !$this->save($data)) {
				$return['errors'][] = __(sprintf('Post for Row %d failed to save.',$i), true);
			}

 			// success message!
			if (!$error) {
				$return['messages'][] = __(sprintf('Post for Row %d was saved.',$i), true);
			}
 		}

 		// close the file
 		fclose($handle);

 		// return the messages
 		return $return;

	}

}
?>

