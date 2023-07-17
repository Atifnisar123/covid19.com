<?php 
session_start();
include 'inc/database.php';

if (isset($_POST['signup'])) {
	$name = $_POST['name'];
	$contact = $_POST['contact'];
	$email = $_POST['email'];
	$address = $_POST['address'];
	$password = $_POST['password'];
	$patientnum = rand(1111, 9999);

	$squery = "SELECT email, id FROM patient WHERE email = '$email' AND id != '$id' ";
	$srun = mysqli_query($connect, $squery);
	if (mysqli_num_rows($srun) >= 1) {
		$_SESSION['warning_msg'] = "enetered email have already an account, use another email";
		header('location: signup.php');
	}else{
		$query = "INSERT INTO patient(name, contact, email, address, password, patientnum) VALUES('$name', '$contact', '$email', '$address', '$password', '$patientnum')";
		$run = mysqli_query($connect, $query);
		if ($run) {
			$_SESSION['msg'] = "successfuly registered, please login now";
			header('location: login.php');
		}else{
			echo "error";
		}
	}
}
 ?>