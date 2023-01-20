<?php
session_start();
include("include/config.php");
if (isset($_POST['submit'])) {
  $uname = $_POST['username'];
  $upassword = $_POST['password'];

  $ret = mysqli_query($con, "SELECT * FROM admin WHERE username='$uname' and password='$upassword'");
  $num = mysqli_fetch_array($ret);
  if ($num > 0) {
    $_SESSION['login'] = $_POST['username'];
    $_SESSION['id'] = $num['id'];
    header("location:dashboard.php");
  } else {
    $_SESSION['errmsg'] = "Invalid username or password";
  }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin-Login</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta content="" name="description" />
  <meta content="" name="author" />
  <link rel="stylesheet" type="text/css" href="../../css/style.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css" integrity="sha512-OTcub78R3msOCtY3Tc6FzeDJ8N9qvQn1Ph49ou13xgA9VsH9+LRxoFU6EqLhW4+PKRfU+/HReXmSZXHEkpYoOA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600;700;900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
</head>

<body class="bg-[url('https://source.unsplash.com/400x400?flower')] bg-no-repeat bg-cover h-screen ">
  <div class="bg-black text-center p-10 flex flex-col justify-center items-center">
    <a href="../../index.php">
      <h2 class="text-3xl font-bold text-white "> Smart Clinic Hospital | Admin Login</h2>
    </a>
  </div>

  <div class="container w-[90%] md:w-2/5 mx-auto  shadow rounded-2xl p-10 mt-10  bg-white">
    <form class="" method="post">

      <h2 class="text-center text-2xl font-bold">
        Sign in to your account
      </h2>
      <p class="text-center mt-5 ">
        Please enter your name and password to log in.<br />
        <span class="text-red-500 "><?php echo htmlentities($_SESSION['errmsg']); ?><?php echo htmlentities($_SESSION['errmsg'] = " "); ?></span>
      </p>
      <div class="">
        <input type="text" class="outline-none p-2 rounded-full shadow text-purple-800 mt-5 w-full pl-5 " name="username" placeholder="Username">
      </div>
      <div class="">
        <input type="password" class="outline-none p-2 rounded-full shadow text-purple-800 mt-5 w-full pl-5" name="password" placeholder="Password">
      </div>
      <div class="mt-5">
        <a class="hover:text-purple-800 " href="forgot-password.php">
          Forgot Password ?
        </a>
      </div>
      <div class="flex justify-center items-center mt-5">
        <button type="submit" class="border rounded-full shadow-lg p-3 bg-purple-800 text-white w-2/5  mx-auto hover:text-purple-800 hover:bg-white hover:border hover:border-purple-800 outline-none" name="submit">
          Login
        </button>
      </div>
      <a class="hover:text-purple-800 " href="../../index.php">Back to HomePage</a>

      <div class="text-center mt-5 font-sans">
        &copy; <span class="current-year"></span><span class="text-bold text-uppercase"> Smart Clinic Hospital</span>. <span>All rights reserved</span>
      </div>

  </div>

  </div>
  </div>

  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    tailwind.config = {
      theme: {
        extend: {
          fontFamily: {
            sans: ["poppins-regular"],
            normal: ["poppins-regular"],
            medium: ["poppins-medium"],
            bold: ["poppins-bold"],
            semibold: ["poppins-semibold"],
            extrabold: ["poppins-extrabold"],
            thin: ["poppins-thin"],
            light: ["poppins-light"],
          },
        },
      },
    }
  </script>
</body>

</html>