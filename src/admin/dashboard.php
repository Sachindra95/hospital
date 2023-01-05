<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['id']==0)) {
 header('location:logout.php');
  } else{


?>
<!DOCTYPE html>
<html lang="en">
<head>
		<title>Admin  | Dashboard</title>
		
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />

	</head>
	<body>
		<div id="app">
<?php include('include/sidebar.php');?>
			<div class="">
				
						<?php include('../include/header.php');?>
			
				<div class="box" >
					<div class="bg-wight" id="container">
						<section id="">
							<div class="">
								<div class="">
									<h1 class="">Admin | Dashboard</h1>
																	</div>
								<ol class="">
									<li>
										<span>Admin</span>
									</li>
									<li class="active">
										<span>Dashboard</span>
									</li>
								</ol>
							</div>
						</section>
							<div class="">
							<div class="">
								<div class="">
									<div class="">
										<div class="">
											<span class=""> <i class=""></i> <i class=""></i> </span>
											<h2 class="">Manage Users</h2>
											
											<p class="">
												<a href="manage-users.php">
												<?php $result = mysqli_query($con,"SELECT * FROM users ");
$num_rows = mysqli_num_rows($result);
{
?>
											Total Users :<?php echo htmlentities($num_rows);  } ?>		
												</a>
											</p>
										</div>
									</div>
								</div>
								<div class="">
									<div class="">
										<div class="">
											<span class=""> <i class=""></i> <i class=""></i> </span>
											<h2 class="">Manage Doctors</h2>
										
											<p class="">
												<a href="manage-doctors.php">
												<?php $result1 = mysqli_query($con,"SELECT * FROM doctors ");
$num_rows1 = mysqli_num_rows($result1);
{
?>
											Total Doctors :<?php echo htmlentities($num_rows1);  } ?>		
												</a>
												
											</p>
										</div>
									</div>
								</div>
								<div class="">
									<div class="">
										<div class="">
											<span class=""> <i class=""></i> <i class=""></i> </span>
											<h2 class=""> Appointments</h2>
											
											<p class="">
												<a href="book-appointment.php">
													<a href="appointment-history.php">
												<?php $sql= mysqli_query($con,"SELECT * FROM appointment");
$num_rows2 = mysqli_num_rows($sql);
{
?>
											Total Appointments :<?php echo htmlentities($num_rows2);  } ?>	
												</a>
												</a>
											</p>
										</div>
									</div>
								</div>

<div class="col-sm-4">
									<div class="">
										<div class="">
											<span class=""> <i class=""></i> <i class=""></i> </span>
											<h2 class="">Manage Patients</h2>
											
											<p class="">
												<a href="manage-patient.php">
<?php $result = mysqli_query($con,"SELECT * FROM tblpatient ");
$num_rows = mysqli_num_rows($result);
{
?>
Total Patients :<?php echo htmlentities($num_rows);  
} ?>		
</a>
											</p>
										</div>
									</div>
								</div>





			<div class="-">
									<div class="">
										<div class="">
											<span class=""> <i class=""></i> <i class=""></i> </span>
											<h2 class=""> New Queries</h2>
											
											<p class="">
												<a href="book-appointment.php">
													<a href="unread-queries.php">
												<?php 
$sql= mysqli_query($con,"SELECT * FROM tblcontactus where  IsRead is null");
$num_rows22 = mysqli_num_rows($sql);
?>
											Total New Queries :<?php echo htmlentities($num_rows22);   ?>	
												</a>
												</a>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
			
	<?php include('include/footer.php');?>

	 <?php include('include/setting.php');?>

		</div>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js" integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>


    <script src="./tailwind.config.js"></script>
	</body>
</html>
<?php } ?>
