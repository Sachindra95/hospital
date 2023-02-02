<?php
session_start();
include("include/config.php");
error_reporting(0);
if (isset($_POST['submit'])) {
  $uname = $_POST['username'];
  $dpassword = md5($_POST['password']);
  $ret = mysqli_query($con, "SELECT * FROM doctors WHERE docEmail='$uname' and password='$dpassword'");
  $num = mysqli_fetch_array($ret);
  if ($num > 0) {
    $_SESSION['dlogin'] = $_POST['username'];
    $_SESSION['id'] = $num['id'];
    $uid = $num['id'];
    $uip = $_SERVER['REMOTE_ADDR'];
    $status = 1;
    //Code Logs
    $log = mysqli_query($con, "insert into doctorslog(uid,username,userip,status) values('$uid','$uname','$uip','$status')");

    header("location:dashboard.php");
  } 
  else {
    $uip = $_SERVER['REMOTE_ADDR'];
    $status = 0;
    mysqli_query($con, "insert into doctorslog(username,userip,status) values('$uname','$uip','$status')");
    $_SESSION['errmsg'] = "Invalid username or password";
    header("location:index.php");
  }
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
  <title>Doctor Login</title>
  <link rel="stylesheet" type="text/css" href="../../css/style.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css" integrity="sha512-OTcub78R3msOCtY3Tc6FzeDJ8N9qvQn1Ph49ou13xgA9VsH9+LRxoFU6EqLhW4+PKRfU+/HReXmSZXHEkpYoOA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600;700;900&display=swap" rel="stylesheet">
</head>

<body class="bg-[url('https://source.unsplash.com/400x400?flower')] bg-no-repeat bg-cover h-screen ">
  <div class="bg-black text-center p-10 flex flex-col justify-center items-center">
    <a href="../../index.php">
      <h2 class="text-3xl font-bold text-white "> Smart Clinic Hospital | Doctor Login</h2>
    </a>
  </div>

  <div class="container w-[90%] md:w-2/5 mx-auto  shadow rounded-2xl p-10 mt-10  bg-white">
    <form class="" method="POST" action="../doctor/dashboard.php">

      <h2 class="text-center text-2xl font-bold">
        Sign in to your account
      </h2>
      <p class="text-center mt-5 ">
        Please enter your username and password to log in.<br />
        <span class="text-red-500 ">
          <?php echo $_SESSION['errmsg']; ?><?php echo $_SESSION['errmsg'] = ""; ?>
        </span>
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

      <div class="text-center mt-5 font-sans">
        &copy; <span class="current-year"></span>2022<span class="text-bold text-uppercase"> Smart Clinic Hospital</span>. <span>All rights reserved</span>
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