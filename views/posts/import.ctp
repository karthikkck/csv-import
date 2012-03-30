<h2>Notifications:</h2>
<ul>
<?php foreach($messages['messages'] as $message) {
  echo '<li>' . $message . '</li>';
} ?>
</ul>
<h2>Errors:</h2>
<?php foreach($messages['errors'] as $error) {
  echo '<li>' . $error . '</li>';
} ?>
</ul>

