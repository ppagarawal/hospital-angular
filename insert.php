<?php
	$conn = new mysqli("localhost", "root", "", "dataphi");

	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	
	/* 
	$data = json_decode(file_get_contents("php://input"));
	$patient_first_name = mysqli_real_escape_string($conn,$data->patient_first_name);
	$patient_last_name = mysqli_real_escape_string($conn,$data->patient_last_name);
	$age = mysqli_real_escape_string($conn,$data->age);
	$dob = mysqli_real_escape_string($conn,$data->dob);
	$gender = mysqli_real_escape_string($conn,$data->gender);
	$phone_number = mysqli_real_escape_string($conn,$data->phone_number);
	$comments = mysqli_real_escape_string($conn,$data->comments);
	*/
	
		$data = json_decode(file_get_contents("php://input"));
	$patient_first_name = $data->patient_first_name;
	$patient_last_name = $data->patient_last_name;
	$age = $data->age;
	$dob = $data->dob;
	$gender = $data->gender;
	$phone_number =  $data->phone_number;
	$comments = $data->comments;

	 $retval = mysqli_query($conn,"INSERT INTO patient_info(PATIENT_FIRST_NAME, PATIENT_LAST_NAME, AGE, DOB, GENDER, PHONE_NUMBER, COMMENTS) VALUES('".$patient_first_name."','".$patient_last_name."','".$age."','".$dob."','".$gender."','".$phone_number."','".$comments."')");

	 if(! $retval ) {
      die('Could not enter data: ' . mysql_error());
   }
   
   echo "Entered data successfully\n";
    mysqli_close($conn);
?>