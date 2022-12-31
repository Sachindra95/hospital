<?php
session_start();
include('include/config.php');
include('include/checklogin.php');
check_login();
date_default_timezone_set('Asia/Kolkata'); // change according timezone
$currentTime = date('d-m-Y h:i:s A', time());
if (isset($_POST['submit'])) {
	$sql = mysqli_query($con, "SELECT password FROM  users where password='" . md5($_POST['cpass']) . "' && id='" . $_SESSION['id'] . "'");
	$num = mysqli_fetch_array($sql);
	if ($num > 0) {
		$con = mysqli_query($con, "update users set password='" . md5($_POST['npass']) . "', updationDate='$currentTime' where id='" . $_SESSION['id'] . "'");
		$_SESSION['msg1'] = "Password Changed Successfully !!";
	} else {
		$_SESSION['msg1'] = "Old Password not match !!";
	}
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>User | change Password</title>

	<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="assets/css/styles.css">
	<link rel="stylesheet" href="assets/css/plugins.css">
	<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
	<script type="text/javascript">
		function valid() {
			if (document.chngpwd.cpass.value != "") {
				if (document.chngpwd.npass.value == "") {
					alert("New Password Filed is Empty !!");
					document.chngpwd.npass.focus();
					return false;
				} else if (document.chngpwd.cfpass.value == "") {
					alert("Confirm Password Filed is Empty !!");
					document.chngpwd.cfpass.focus();
					return false;
				} else if (document.chngpwd.npass.value != document.chngpwd.cfpass.value) {
					alert("Password and Confirm Password Field do not match  !!");
					document.chngpwd.cfpass.focus();
					return false;
				}
			} else {
				alert("Current Password Filed is Empty !!");
				document.chngpwd.cpass.focus();
				return false;
			}
			return true;
		}
	</script>

</head>

<body>
	<div id="app">
		<?php include('include/sidebar.php'); ?>
		<div class="app-content">

			<?php include('include/header.php'); ?>

			<!-- end: TOP NAVBAR -->
			<div class="main-content">
				<div class="wrap-content container" id="container">
					<!-- start: PAGE TITLE -->
					<section id="page-title">
						<div class="row">
							<div class="col-sm-8">
								<h1 class="mainTitle">User | Change Password</h1>
							</div>
							<ol class="breadcrumb">
								<li>
									<span>User</span>
								</li>
								<li class="active">
									<span>Change Password</span>
								</li>
							</ol>
						</div>
					</section>
					<!-- end: PAGE TITLE -->
					<!-- start: BASIC EXAMPLE -->
					<div class="container-fluid container-fullw bg-white">
						<div class="row">
							<div class="col-md-12">

								<div class="row margin-top-30">
									<div class="col-lg-8 col-md-12">
										<div class="panel panel-white">
											<div class="panel-heading">
												<h5 class="panel-title">Change Password</h5>
											</div>
											<div class="panel-body">
												<p style="color:red;"><?php echo htmlentities($_SESSION['msg1']); ?>
													<?php echo htmlentities($_SESSION['msg1'] = ""); ?></p>
												<form role="form" name="chngpwd" method="post" onSubmit="return valid();">
													<div class="form-group">
														<label for="exampleInputEmail1">
															Current Password
														</label>
														<input type="password" name="cpass" class="form-control" placeholder="Enter Current Password">
													</div>
													<div class="form-group">
														<label for="exampleInputPassword1">
															New Password
														</label>
														<input type="password" name="npass" class="form-control" placeholder="New Password">
													</div>

													<div class="form-group">
														<label for="exampleInputPassword1">
															Confirm Password
														</label>
														<input type="password" name="cfpass" class="form-control" placeholder="Confirm Password">
													</div>



													<button type="submit" name="submit" class="btn btn-o btn-primary">
														Submit
													</button>
												</form>
											</div>
										</div>
									</div>

								</div>
							</div>

						</div>
					</div>

					<!-- end: BASIC EXAMPLE -->






					<!-- end: SELECT BOXES -->

				</div>
			</div>
		</div>
		<!-- start: FOOTER -->
		<?php include('include/footer.php'); ?>
		<!-- end: FOOTER -->

		<!-- start: SETTINGS -->
		<?php include('include/setting.php'); ?>
		<>
			<!-- end: SETTINGS -->
	</div>

	<script>
		jQuery(document).ready(function() {
			Main.init();
			FormElements.init();
		});
	</script>
	<!-- end: JavaScript Event Handlers for this page -->
	<!-- end: CLIP-TWO JAVASCRIPTS -->
</body>

</html>