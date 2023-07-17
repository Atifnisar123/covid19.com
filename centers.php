<?php include('inc/header.php'); ?>
<?php include('inc/carousel2.php'); ?>

<div class="contact" style="background-color: #F5F9FF;">
	<div class="container">
		<div class="row" >
		    <div class="col-md-10 offset-md-1">
		    	<p class="text-center text-primary">CENTERS</p>
				<h2 class="text-center mb-5">Vaccine Distribution Centers</h2>
					<form action="" method="POST" class="mb-3 ms-5">
						<input type="search" name="stext" placeholder="search by city name or center name" class="form-control w-50 d-inline ms-5">
						<input type="submit" name="search" value="SEARCH" class="btn btn-primary form-control w-25 d-inline">
					</form>
				</div>
			</div>
			<div  class="row p-5 mt-5">
				<?php 
					include_once 'inc/database.php';
					$sr = 0;
					if (isset($_POST['search'])) {
						$stext = $_POST['stext'];
						$query = "SELECT * FROM centers WHERE city LIKE '%$stext%' OR cname LIKE '%$stext%' ";
					}else{
						$query = "SELECT * FROM centers";
					}
					$run = mysqli_query($connect, $query);
					while($data = mysqli_fetch_assoc($run)){
						$sr++;
				?>
				<div class="col-md-4 mb-5">
					<div class="card border-0 shadow-sm rounded p-2">
					  <div class="card-body">
					    <h5 class="card-title"><?php echo $data['cname']; ?></h5>
					    <p class="card-text">
					    	<p><i class="fa fa-envelope me-2"></i> <?php echo $data['cemail']; ?><p>
					    	<p><i class="fa fa-phone me-2"></i> <?php echo $data['ccontact']; ?><p>
					    	<p><i class="fa fa-location-dot me-2"></i> <?php echo $data['caddress'].",".$data['city']; ?><p>
					    </p>
					  </div>
					</div>
				</div>
				<?php } ?>
			</div>
				</div>
			</div>
	</div>
</div>

<?php include('inc/footer.php'); ?>