<?php

$servername = 'cs.okstate.edu';
$username = 'pberniu';
$password = '=astCanary18';
$database = 'pberniu';


// Create connection
$db = new mysqli($servername, $username, $password, $database);

// Check connection
if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}

$sql = "SELECT * FROM states";
$result = $db->query($sql);

$stateArray = array();
$tempArray = array();

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
	$tempArray[name] = $row["name"];
	$tempArray[nickname] = $row["nickname"];
	$stateArray[] = $tempArray;
  }
} else {
  echo "0 results";
}
header('Content-Type: application/json');
echo json_encode($stateArray, JSON_PRETTY_PRINT);
?>
