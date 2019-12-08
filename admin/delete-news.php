 <?php  include '../includes/db-connect.php'; include("session.php");
 if(isset($_GET['delete'])){
$delete_id = $_GET['delete'];
$query = "DELETE FROM news WHERE id = $delete_id";
$run = mysql_query($query);
if($run){
	echo '<script type="text/javascript">confirm("Record Has Been Deleted ! ");</script>';
			header('Location: view-news.php');
		}
		
}

?>