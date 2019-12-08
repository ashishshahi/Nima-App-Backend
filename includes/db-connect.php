<?php
$db = mysql_connect("localhost","root","","mrecord") or die(mysql_error());
$db_men = mysql_select_db("mrecord") or die(mysql_error());
?>
<?php date_default_timezone_set('Asia/Kolkata'); ?>