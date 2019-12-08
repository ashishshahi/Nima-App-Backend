<?php
@session_start();

if(@$_SESSION['ses']==NULL)
{
	echo "<script>location='login.php'</script>";
}
?>