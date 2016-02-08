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
<?php
$titleErr = $scoreErr = $dateErr = $verslagErr = "";
$title = $score = $date = $verslag = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
if (empty($_POST["title"])) {
$titleErr = "title is required";
} else{
 $title = $_POST["title"];
}
if (empty($_POST["score"])) {
$scoreErr = "score is required";
} else{
 $score = $_POST["score"];
}

if (empty($_POST["verslag"])) {
$verslagErr = "verslag is required";
} else{
$verslag = $_POST["verslag"];
}

if (empty($_POST["date"])) {
$dateErr = "date is required";
} else{
 $date = $_POST["date"];
}
}
	
?>
<div class="form">

<p class="error"><span class="error">* required field.</span></p>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
<label for="activiteiten">title: </label><input placeholder="title" type="text" id="title" name="title" value="">
<span class="error">* <?php echo $titleErr;?></span>
<br><br>
<p>verslag</p>
<textarea name="verslag" rows="40" cols="50" placeholder="verslag"></textarea>
<span class="error">* <?php echo $verslagErr;?></span>
<br></br>
<label for="score">score: </label><input placeholder="score" type="text" id="score" name="score" value="">
<span class="error">* <?php echo $scoreErr;?></span>
<br></br>
<label for="date">date: </label> <input type="date" name="date">
<span class="error">* <?php echo $dateErr;?></span>
<br></br>
<input type="submit" id="submit" name="submit" value="Submit" >
<br></br>
</form>
</div>
<?php
//Create connection

$conn = mysqli_connect('localhost', 'root', 'usbw');

mysqli_select_db($conn, 'svw');
if (isset($_POST['submit'])){
	
// Required field names
$required = array('title', 'score', 'date', 'verslag');
// Loop over field names, make sure each one exists and is not empty
$error = false;
foreach($required as $field) {
if (empty($_POST[$field])) {
$error = true;

}
}
if ($error) {
} else {
$sql = "INSERT INTO verslagen (title, score, date, samenvatting)
VALUES ('$title', '$score', '$date', '$verslag')";
mysqli_query($conn, $sql);


	echo "Post added";
	}
}
?>



</div>
</body>
</html>