 <?php  include '../includes/db-connect.php'; include("session.php");
 if(isset($_GET['delete'])){
$delete_id = $_GET['delete'];
$query = "DELETE FROM event WHERE id = $delete_id";
$run = mysql_query($query);
if($run){
	echo '<script type="text/javascript">alert("Record Has Been Deleted ! ");</script>';
			header('Location: list-event.php');
		}
		
}

?>