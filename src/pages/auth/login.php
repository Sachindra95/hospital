<?php
session_start();
error_reporting(0);
include("../../../config.php");
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
  
    $log = mysqli_query($con, "insert into userlog(uid,username,userip,status) values('$pid','$puname','$uip','$status')");
    header("location:dashboard.php");
  } else {

    $_SESSION['login'] = $_POST['username'];
    $uip = $_SERVER['REMOTE_ADDR'];
    $status = 0;
    mysqli_query($con, "insert into userlog(username,userip,status) values('$puname','$uip','$status')");
    $_SESSION['errmsg'] = "Invalid username or password";

    header("location:login.php");
  }
}
?>

<!DOCTYPE html>
<html lang="en">

<?php include('../../../src/include/header.php') ?>

<body class="bg-[url('https://source.unsplash.com/400x400?flower')] bg-no-repeat bg-cover h-screen ">


  <div class="bg-black text-center p-10 flex flex-col justify-center items-center">
    <a href="../../../index.php">
      <h2 class="text-3xl font-bold text-white "> Smart Clinic Hospital | Patient Login</h2>
    </a>
  </div>

  <div class="container w-[90%] md:w-2/5 mx-auto  shadow rounded-2xl p-10 mt-10  bg-white">
    <form class="" method="POST" action="../../dashboard.php">

      <h2 class="text-center text-2xl font-bold">
        Sign in to your account
      </h2>
      <p class="text-center mt-5 ">
        Please enter your name and password to log in.<br />
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
        <a class="hover:text-purple-800 " href="forgot.php">
          Forgot Password ?
        </a>
      </div>
      <div class="flex justify-center items-center mt-5">
        <button type="submit" class="border rounded-full shadow-lg p-3 bg-purple-800 text-white w-2/5  mx-auto hover:text-purple-800 hover:bg-white hover:border hover:border-purple-800 outline-none" name="submit">
          Login
        </button>
      </div>

      <div class="text-center mt-5 ">
        Don't have an account yet?
        <a class="hover:text-purple-800 " href="register.php">
          Create an account
        </a>
      </div>

    </form>
    <div class="text-center mt-5 font-sans">
      &copy; <span class="current-year"></span><span class="text-bold text-uppercase"> Smart Clinic Hospital</span>. <span>All rights reserved</span>
    </div>
  </div>

  
</body>

</html>