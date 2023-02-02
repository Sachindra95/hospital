<?php
session_start();
error_reporting(0);
include("include/config.php");
//Checking Details for reset password
if (isset($_POST['submit'])) {
	$contactno = $_POST['contactno'];
	$email = $_POST['email'];
	$query = mysqli_query($con, "select id from  doctors where contactno='$contactno' and docEmail='$email'");
	$row = mysqli_num_rows($query);
	if ($row > 0) {

		$_SESSION['cnumber'] = $contactno;
		$_SESSION['email'] = $email;
		header('location:reset-password.php');
	} else {
		echo "<script>alert('Invalid details. Please try with valid details');</script>";
		echo "<script>window.location.href ='forgot-password.php'</script>";
	}
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
	<title>Password Recovery</title>

	<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="assets/css/styles.css">
	<link rel="stylesheet" href="assets/css/plugins.css">
	<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
</head>
<?php include('../include/header.php') ?>
<body class="bg-[url('https://source.unsplash.com/400x400?flower')] bg-no-repeat bg-cover h-screen">
    <div class="container">

        <div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
            <div class="bg-black text-center p-10 flex flex-col justify-center items-center">
                <h2 class="text-3xl font-bold text-white "> Smart Clinic Hospital | Doctor Password Recovery</h2>
            </div>

            <div class="container w-[90%] md:w-2/5 mx-auto  shadow rounded-2xl p-10 mt-10  bg-white">
                <form class="form-login" action="./forgot-password.php" method="post">

                    <h2 class="text-center text-2xl font-bold">
                        Doctor Password Recovery
                    </h2>
                    <p class="text-center mt-5 ">
					Please enter your Contact number and Email to recover your password.<br />
                    </p>
                    <div class="">
                        <input type="text"
                            class="outline-none p-2 rounded-full shadow text-purple-800 mt-5 w-full pl-5 "
                            name="Registred Contact Number" placeholder="Registred Contact Number">
                    </div>
                    <div class="">
                        <input type="email"
                            class="outline-none p-2 rounded-full shadow text-purple-800 mt-5 w-full pl-5"
                            name="Registred Email" placeholder="Registred Email">
                    </div>
                    <div class="flex justify-center items-center mt-5">
                        <button type="submit"
                            class="border rounded-full shadow-lg p-3 bg-purple-800 text-white w-2/5  mx-auto hover:text-purple-800 hover:bg-white hover:border hover:border-purple-800 outline-none"
                            name="submit">
                            Reset
                        </button>
                    </div>
                    <div class="text-center mt-5">
                        Already have an account?
                        <a href="index.php">
                            Log-in
                        </a>
                    </div>
                </form>
                <div class="text-center mt-5 font-sans">
                    &copy; <span class="current-year">2022</span><span class="text-bold text-uppercase"> Smart Clinic
                        Hospital</span>. <span>All rights reserved</span>
                </div>
            </div>
        </div>
    </div>
</body>
</html>