<?php
  // maak een verbinding met MySQL
  $connection = mysql_connect('localhost', 'root','usbw');
	
  // geef aan welke database we willen gebruiken
  mysql_select_db('svw');
?>
<!Doctype HTML>
<html>
<head>
<link rel="stylesheet" href="style1.css" type="text/css" />
<title>svw b1</title>
</head>
<body>
<div class="container">
<?php include('menu.php')?>
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
<?php	include('footer.php')?>

</div>
</body>
</html>