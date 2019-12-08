<!DOCTYPE html>
<html >
<head>
<meta />
<title></title>
<link rel='stylesheet' href='../css/bootstrap.min.css' type='text/css' />
<style>
	.anch{
		text-align: center;
		text-decoration:none;
		margin-top:10px;
	}
	.menu{border-radius: 10px;
    background-color: rgba(247, 246, 246, 0.35);;
    line-height: 6;
    margin-bottom: 10px;
	}
	a{color:#FFFFFF;}
	.nav>li>a:focus, .nav>li>a:hover {
    background-color: #44c9f4;
	    color: #383636;
		
}
.container{
padding-left:0px;
padding-right:0px;
}
</style>

</head>
<SCRIPT TYPE="text/javascript">
  function popup(mylink, windowname) { 
    if (! window.focus)return true;
    var href;
    if (typeof(mylink) == 'string') href=mylink;
    else href=mylink.href; 
    window.open(href, windowname, 'width=500,height=400,scrollbars=yes'); 
    return false; 
  }
</SCRIPT>
<body>
<script src="../js/jquery.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
<div class="container">
<div class="menu"><center><a href="index.php" class="anch"><img src="logo.png" alt="Banner" /></a></center></div></div>
<div class="container" style="background-color:#0895db;color:#FFFFFF;"> 
<ul class="nav nav-bar nav-justified">
    <li class="active"><a href="index.php" >Home</a></li>
    <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Members <span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="../index.php" target="_blank">Add Member</a></li>
        <li><a href="import.php" onClick="return popup(this, 'stevie')">Import CSV</a></li>
        <li><a href="list-member.php">List of Members</a></li>                        
      </ul>
    </li>
    <li><a class="dropdown-toggle" data-toggle="dropdown" href="#">News <span class="caret"></span></a>
	 <ul class="dropdown-menu">
        <li><a href="news.php">Add News</a></li>
        <li><a href="view-news.php">List of News</a></li>                     
      </ul>
	</li>
	<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Resources<span class="caret"></span></a>
		<ul class="dropdown-menu">
			<li class="dropdown-submenu"><a class="test" tabindex="-1" href="#">Tourism Board<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a tabindex="-1" href="add-tourism.php">Add Tourism Detail</a></li>
          			<li><a tabindex="-1" href="list-tourismboard.php">List Of Tourism Board</a></li>
				</ul>
			</li>
			<li><a href="#">Mice</a></li>  
		</ul>
	</li>
	<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Event <span class="caret"></span></a>
	 <ul class="dropdown-menu">
        <li><a href="add-event.php">Add Event</a></li>
        <li><a href="list-event.php">List Event</a></li>                     
      </ul>
	</li>
	<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Notice <span class="caret"></span></a>
	 <ul class="dropdown-menu">
        <li><a href="add-notice.php">Add Notice</a></li>
        <li><a href="list-notice.php">List Notice</a></li>                     
      </ul>
	</li>
	<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Hotel<span class="caret"></span></a>
	 <ul class="dropdown-menu">
        <li><a href="add-hotel.php">Add Hotel</a></li>
        <li><a href="list-hotel.php">List of Hotel</a></li>                     
      </ul>
	</li>
	<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Airlines <span class="caret"></span></a>
	 <ul class="dropdown-menu">
        <li><a href="add-airline.php">Add Airlines</a></li>
        <li><a href="list-airline.php">List of Airlines</a></li>                     
      </ul>
	</li>
	<li><a href="messages.php">Message</a></li>
    <li><a href="logout.php">Logout</a></li>
  </ul>
 </div> 
</body>
<script>
$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
</script>
</html>