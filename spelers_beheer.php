<?php
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['user']))
{
	header("Location: login.php");
}
$res=mysql_query("SELECT * FROM users WHERE user_id=".$_SESSION['user']);
$userRow=mysql_fetch_array($res);
?>
<!Doctype HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome - <?php echo $userRow['user_email']; ?></title>
<link rel="stylesheet" href="style.css" type="text/css" />
<title>svw b1</title>
</head>
<body>
<div id="header">
	<div id="left">
    <label>beheer</label>
    </div>
    <div id="right">
    	<div id="content">
        	hi' <?php echo $userRow['user_name']; ?>&nbsp;<a href="logout.php?logout">Sign Out</a>
        </div>
    </div>
</div>
<div class="container">
<?php include('menu_beheer.php')?>
<img class="svwb1" src="svwb1.jpg" >
<center><p>spelers boven:Mohammed, Emre, Daniel, Sam, Sven, Julian, Camilo, Tim.</p>
<p>onder:Adriano, Khadar, Ilias, Oguzhan, Deniz, jaafar</p></center>
<center>
<h2>Trainer:Ron Schaap</h2>
<h2>ASS. TRAINER : MATTHIEU VAN METEREN</h2>
<h2>GRENSRECHTER : HR. GULPINAR</h2></center>
</div>
</body>
</html>