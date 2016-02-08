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
<link rel="stylesheet" href="style1.css" type="text/css" />
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
<table>

   <tr>
	<th>wedstrijd</th>
	<th>date</th>
	<th>uitslag</th>
	</tr>
	
  <?php
  // maak een query om alle spellen op te vragen
  $query = "select * from verslagen order by date desc";
  	
  // voer de query uit
  $result = mysql_query($query);
  // loop door alle rijen heen
while ($row = mysql_fetch_assoc ($result))
	
{
  // haal gegevens die we nodig hebben uit de rij
  $verslagen_id = $row["id"];
  $verslagen_title = $row["title"];
  $verslagen_score = $row["score"];
    $verslagen_samenvatting = $row["samenvatting"];
	 $verslagen_date = $row["date"];
	
	
  // maak een lijst item aan op de pagina
  echo "

	<tr>
		<th>$verslagen_title</th>
		<th>$verslagen_date</th>
		<th>$verslagen_score</th>
	</tr>
	"?>
	<tr>
	<th></th>
	<th>verslag</th>
	<th></th>
	</th>
	<?php 
	echo" 
	<tr>	
	<td colspan='3'>$verslagen_samenvatting</td>
	</tr>

	";
}

?>

</table></center>


</div>
</body>
</html>