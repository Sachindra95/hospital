<?php
include_once('../../include/config.php');
if (isset($_POST['submit'])) {
  $fname = $_POST['full_name'];
  $address = $_POST['address'];
  $city = $_POST['city'];
  $gender = $_POST['gender'];
  $email = $_POST['email'];
  $password = md5($_POST['password']);
  $query = mysqli_query($con, "insert into users(fullname,address,city,gender,email,password) values('$fname','$address','$city','$gender','$email','$password')");
  if ($query) {
    echo "<script>alert('Successfully Registered. You can login now');</script>";
  }
}
?>

<!DOCTYPE html>
<html lang="en">

<?php include('../../../src/include/header.php') ?>

<body class="bg-[url('https://source.unsplash.com/400x400?flower')] bg-no-repeat bg-cover h-screen ">

  <div class="bg-black text-center p-10 flex flex-col justify-center items-center">
    <a href="../../../index.php">
      <h2 class="text-3xl font-bold text-white ">Smart Clinic Hospital| Patient Registration</h2>
    </a>
  </div>
  <div class="container w-[90%] md:w-2/5 mx-auto  shadow rounded-2xl p-10 mt-10  bg-white">
    <form name="registration" id="registration" method="post" onSubmit="return valid();">
      <h2 class="text-center text-2xl font-bold">
        Sign Up
      </h2>

      <p class="text-center mt-5 font-medium">
        Enter your personal details below:
      </p>

      <div class="">
        <input type="text" class="outline-none p-2 rounded-full shadow text-purple-800 mt-5 w-full pl-5 " name="full_name" placeholder="Full Name" required>
      </div>

      <div class="">
        <input type="text" class="outline-none p-2 rounded-full shadow text-purple-800 mt-5 w-full pl-5" name="address" placeholder="Address" required>
      </div>

      <div class="">
        <input type="text" class="outline-none p-2 rounded-full shadow text-purple-800 mt-5 w-full pl-5" name="city" placeholder="City" required>
      </div>

      <h2 class="mt-3 font-medium">
        Gender
      </h2>

      <div class="flex justify-around items-center">
        <div>
          <input type="radio" id="rg-male" name="gender" value="male">
          <label for="rg-male">
            Male
          </label>
        </div>
        <div>
          <input type="radio" id="rg-female" name="gender" value="female">
          <label for="rg-female">
            Female
          </label>
        </div>
      </div>

      <p class="font-medium">
        Enter your account details below:
      </p>

      <div class="mt-3">
        <span class="input-icon">
          <input type="email" class="outline-none p-2 rounded-full shadow text-purple-800 mt-5 w-full pl-5" name="email" id="email" onBlur="userAvailability()" placeholder="Email" required>
          <i class="fa fa-envelope"></i> </span>
        <span id="user-availability-status1" style="font-size:12px;"></span>
      </div>
      <div class="">
        <span class="input-icon">
          <input type="password" class="outline-none p-2 rounded-full shadow text-purple-800 mt-5 w-full pl-5" id="password" name="password" placeholder="Password" required>
          <i class="fa fa-lock"></i> </span>
      </div>
      <div class="">
        <span class="input-icon">
          <input type="password" class="outline-none p-2 rounded-full shadow text-purple-800 mt-5 w-full pl-5" id="password_again" name="password_again" placeholder="Password Again" required>
          <i class="fa fa-lock"></i> </span>
      </div>
      <div class="">
        <div class="checkbox clip-check check-primary">
          <input type="checkbox" id="agree" value="agree" checked="true" readonly=" true">
          <label for="agree">
            I agree
          </label>
        </div>
      </div>

      <div class="flex justify-center items-center mt-5">
        <button type="submit" class="border rounded-full shadow-lg p-3 bg-purple-800 text-white w-2/5  mx-auto hover:text-purple-800 hover:bg-white hover:border hover:border-purple-800 outline-none" id="submit" name="submit">
          Submit <i class="fa fa-arrow-circle-right"></i>
        </button>
      </div>

      <div class="text-center mt-5">
        <p>
          Already have an account?
          <a class="hover:text-purple-800 " href="../../../src/pages/auth/login.php">
            Log-in
          </a>
        </p>
      </div>
    </form>

    <div class="text-center mt-5 font-sans">
      &copy; <span class="current-year"></span><span class="text-bold text-uppercase"> Smart Clinic Hospital</span>. <span>All rights reserved</span>
    </div>

  </div>




  <script>
    function userAvailability() {
      $("#loaderIcon").show();
      jQuery.ajax({
        url: "check_availability.php",
        data: 'email=' + $("#email").val(),
        type: "POST",
        success: function(data) {
          $("#user-availability-status1").html(data);
          $("#loaderIcon").hide();
        },
        error: function() {}
      });
    }
  </script>

</body>
<!-- end: BODY -->

</html>