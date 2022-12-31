<?php
session_start();
error_reporting(0);
include("include/config.php");
if (isset($_POST['submit'])) {
	$puname = $_POST['username'];
	$ppwd = md5($_POST['password']);
	$ret = mysqli_query($con, "SELECT * FROM users WHERE email='$puname' and password='$ppwd'");
	$num = mysqli_fetch_array($ret);
	if ($num > 0) {
		$_SESSION['login'] = $_POST['username'];
		$_SESSION['id'] = $num['id'];
		$pid = $num['id'];
		$host = $_SERVER['HTTP_HOST'];
		$uip = $_SERVER['REMOTE_ADDR'];
		$status = 1;
		// For stroing log if user login successfull
		$log = mysqli_query($con, "insert into userlog(uid,username,userip,status) values('$pid','$puname','$uip','$status')");
		header("location:dashboard.php");
	} else {
		// For stroing log if user login unsuccessfull
		$_SESSION['login'] = $_POST['username'];
		$uip = $_SERVER['REMOTE_ADDR'];
		$status = 0;
		mysqli_query($con, "insert into userlog(username,userip,status) values('$puname','$uip','$status')");
		$_SESSION['errmsg'] = "Invalid username or password";

		header("location:user-login.php");
	}
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
	<title>User-Login</title>

	<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="assets/css/styles.css">
	<link rel="stylesheet" href="assets/css/plugins.css">
	<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
</head>

<body class="login">
	<div class="row">
		<div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="logo margin-top-30">
				<a href="../index.php">
					<h2> Smart Clinic Hospital | Patient Login</h2>
				</a>
			</div>

			<div class="box-login">
				<form class="form-login" method="post">
					<fieldset>
						<legend>
							Sign in to your account
						</legend>
						<p>
							Please enter your name and password to log in.<br />
							<span style="color:red;"><?php echo $_SESSION['errmsg']; ?><?php echo $_SESSION['errmsg'] = ""; ?></span>
						</p>
						<div class="form-group">
							<span class="input-icon">
								<input type="text" class="form-control" name="username" placeholder="Username">
								<i class="fa fa-user"></i> </span>
						</div>
						<div class="form-group form-actions">
							<span class="input-icon">
								<input type="password" class="form-control password" name="password" placeholder="Password">
								<i class="fa fa-lock"></i>
							</span><a href="forgot-password.php">
								Forgot Password ?
							</a>
						</div>
						<div class="form-actions">

							<button type="submit" class="btn btn-primary pull-right" name="submit">
								Login <i class="fa fa-arrow-circle-right"></i>
							</button>
						</div>
						<div class="new-account">
							Don't have an account yet?
							<a href="registration.php">
								Create an account
							</a>
						</div>
					</fieldset>
				</form>

				<div class="copyright">
					</span><span class="text-bold text-uppercase">Smart Clinic Hospital</span>.
				</div>

			</div>

		</div>
	</div>
</body>
<!-- end: BODY -->

</html>