
<?php
header("Content-Type: application/json; charset=UTF-8");

$conn = new mysqli("localhost", "root", "", "dataphi");
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
$result = $conn->query("SELECT patient_first_name, patient_last_name FROM patient_info");

$outp = "";
while($resultset = $result->fetch_array(MYSQLI_ASSOC)) {
    if ($outp != "") {$outp .= ",";}
    $outp .= '{"FirstName":"'  . $resultset["patient_first_name"] . '",';
    $outp .= '"LastName":"'   . $resultset["patient_last_name"] . '"}';
}
$outp ='{"records":['.$outp.']}';

    mysqli_close($conn);

echo($outp);
?>
