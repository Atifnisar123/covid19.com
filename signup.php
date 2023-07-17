<?php include('inc/header.php'); ?>
<?php include('inc/carousel2.php'); ?>

<div class="price"style="background-color: #F5F9FF; padding:8% 0% 7% 0%;">
	<div class="container">
			<div class="row" >
		    <div class="col-md-5">
		      <p class="text-primary">SIGNUP</p>
		      <h2>Create an Account</h2>
		      <form action="signup_func.php" method="POST" class="mt-3">
		        <input type="text" name="name" placeholder="your name" class="form-control p-3 mb-3 text-capitalize">
		        <input type="email" name="email" placeholder=" your email" class="form-control p-3 mb-3">
		        <input type="number" name="contact" placeholder="your phone" class="form-control p-3 mb-3">
		        <input type="text" name="address" placeholder="your address" class="form-control p-3 mb-3 text-capitalize">
		        <input type="password" name="password" placeholder="your password" class="form-control p-3 mb-3">
		        <input type="submit" name="signup" value="Signup" class="form-control p-3 btn btn-primary">
		      </form>
		    </div>
		    <div class="col-md-6 offset-md-1">
		      <img src="img/signup-img.jpg" class="img-fluid mt-5 rounded">
		    </div>
		  </div>
	</div>
</div>

<?php include('inc/footer.php'); ?>