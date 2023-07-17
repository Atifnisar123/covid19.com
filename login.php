<?php include('inc/header.php'); ?>
<?php include('inc/carousel2.php'); ?>

	<div class="container" style="margin-top: 10%; margin-bottom: 10%;">
		<div class="row">
			<div class="col-md-4 offset-md-4 shadow-lg">
				<h3 class="text-center mt-5"><b>Login</b> <li class="far fa-user-lock"></li></h3> <br>
				<form action="login_func.php" method="POST" class="p-3">
					<select name="role" required="" class="form-control mb-3">
						<option value="">Select role</option>
						<option value="Admin">Admin</option>
						<option value="Patient">Patient</option>
					</select>
					<div class="input-group mb-3">
					  <span class="input-group-text" id="basic-addon1"><i class="far fa-envelope"></i></span>
					  <input type="email" name="email" class="form-control" placeholder="your email" aria-label="your email" aria-describedby="basic-addon1">
					</div>
					<div class="input-group mb-3">
					  <span class="input-group-text" id="basic-addon2"><i class="far fa-key-skeleton"></i></span>
					  <input type="password" name="password" class="form-control" placeholder="your password" aria-label="your password" aria-describedby="basic-addon2">
					</div>

					<input type="submit" name="login" value="Login" class="form-control btn btn-primary mt-3">
				</form>
				<br><p class="mb-5 ms-3">Are you a new user? <a href="signup.php">Signup</a></p>
			</div>
		</div>
	</div>


<?php include('inc/footer.php'); ?>