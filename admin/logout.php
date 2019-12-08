<?php
session_start();
session_unset();
session_destroy();
?>

<script type="text/javascript">confirm("Are You Want To LOGOUT.");alert('BYE BYE');
location='login.php';
</script>