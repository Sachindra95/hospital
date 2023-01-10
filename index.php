<?php
include_once('./config/index.php');
if (isset($_POST['submit'])) {
    $name = $_POST['fullname'];
    $email = $_POST['emailid'];
    $mobileno = $_POST['mobileno'];
    $dscrption = $_POST['description'];
    $query = mysqli_query($con, "insert into tblcontactus(fullname,email,contactno,message) value('$name','$email','$mobileno','$dscrption')");
    echo "<script>alert('Your information succesfully submitted');</script>";
    echo "<script>window.location.href ='index.php'</script>";
} ?>

<!DOCTYPE html>
<html lang="en">

<?php include('./src/include/header.php') ?>

<body>


    <?php include('./src/include/navbar.php') ?>

    <div class="mt-32 "></div>

    <img class="w-full h-[50vh]" src="assets/images/slider/slider_1.jpg" alt="First slide">

    <!-- <div class="h-[500px] bg-red-500 w-full">
        <div class="">
            <img class="" src="assets/images/slider/slider_1.jpg" alt="First slide">
        </div>
        <div class="">
            <img class="" src="assets/images/slider/slider_2.jpg" alt="Second slide">
        </div>
        <div class="">
            <img class="" src="assets/images/slider/slider_3.jpg" alt="Third slide">
        </div>
    </div> -->


    <!-- Logins -->
    <section class="container mx-auto">

        <h2 class="text-3xl text-center text-gray-800 font-bold my-5 ">Logins</h2>

        <div class="flex justify-between items-center">

            <div class="rounded shadow m-2 relative">
                <div class="">
                    <img class="rounded" src="assets/images/patient.jpg" alt="">
                    <div class="p-2 m-2">
                        <h6 class="text-center font-medium text-lg">Patient Login</h6>
                        <a type="button" href="src/pages/auth/login.php" class="p-3 rounded-full shadow w-36 text-white outline-none bg-green-500 ">Click Here</a>
                    </div>
                </div>
            </div>

            <div class="rounded shadow m-2">
                <div class="blog-single">
                    <img class="rounded" src="assets/images/doctor.jpg" alt="">
                    <div class="p-2 m-2">
                        <h6 class="text-center font-medium text-lg">Doctors login</h6>
                        <a href="src/doctor/index.php" type="button" class="p-3 rounded-full shadow w-36 text-white outline-none bg-green-500 ">Click Here</a>
                    </div>
                </div>
            </div>

            <div class="rounded shadow m-2">
                <div class="">
                    <img class="rounded" src="assets/images/admin.jpg" alt="">
                    <div class="p-2 m-2">
                        <h6 class="text-center font-medium text-lg">Admin Login</h6>
                        <a href="src/admin/index.php" type="button" class="p-3 rounded-full shadow w-36 text-white outline-none bg-green-500 ">Click Here</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- *********** login page end *********** -->

    
    <!--Footer Starts Here--->
    <?php include('./src/include/footer.php') ?>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js" integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="./tailwind.config.js"></script>
</body>


</html>