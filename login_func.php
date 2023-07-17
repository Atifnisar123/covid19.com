<?php

session_start();

include("inc/database.php");

if (isset($_POST['login'])) {
		
//getting value form login form
	$role = $_POST['role'];
	$email=$_POST["email"];
	$password=$_POST["password"];
	if ($role == "Admin") {
			//selecting admin data form database					
			$query = "SELECT * FROM admin WHERE aemail = '$email' AND apassword = '$password' ";
			$run = mysqli_query($connect , $query);
			$data = mysqli_fetch_assoc($run);
				//checking if the admin has entered right email and password 
			if(mysqli_num_rows($run)==1){
					$_SESSION['msg'] = "Welcome Admin to COVID-19 Vaccination System";
					$_SESSION['aemail'] = $email;
					$_SESSION['aid'] = $data['aid'];
					header('location: admin/index.php'); //redirecting to admin home-page
			}else{
					$_SESSION['warning_msg'] = "incorrect email or password, try again";
					header('location:login.php');  //redirecting to login page
		}
	}elseif($role =="Patient"){
			//selecting patient data form database					
		$query = "SELECT * FROM patient WHERE email = '$email' AND password = '$password' ";
		$run = mysqli_query($connect , $query);
		$data = mysqli_fetch_assoc($run);
	
			//checking if the user has entered right email and password 
		if(mysqli_num_rows($run)==1){
				$_SESSION['msg'] = "Welcome <b> ".$data['name']." </b> to COVID-19 Vaccination System";
				$_SESSION['pemail'] = $email;
				header('location: patient/index.php'); //redirecting to patient home-page
				//chechking if the patient status is pending
			}else{
				$_SESSION['warning_msg'] = "incorrect email or password, try again";
				header('location:login.php');  //redirecting to login page
			}
		}
	}
		