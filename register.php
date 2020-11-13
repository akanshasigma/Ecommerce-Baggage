<!--
Author:W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<?php
/**
 * Created by PhpStorm.
 * User: Akansha
 * Date: 27/10/20
 * Time: 12:25 PM
 */
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if(isset($_POST['submit'])) {

    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $password = $_POST['password'];
    $cpassword = $_POST['cpassword'];

    // Image Upload
    $imgfile = $_FILES["image"]["name"];
    $extension = substr($imgfile, strlen($imgfile) - 4, strlen($imgfile));
    $allowed_extensions = array(".jpg", ".jpeg", ".png", ".gif");


         if (empty($fname)) {
             $error = "Please enter your first name";
             $code = 1;
         }
         else if(!preg_match("/^[a-zA-Z ]*$/",$fname)) {
             $error = "Only alphabets and white space are allowed";
             $code = 1;
         }
         else if (empty($lname)) {
             $error = "Please enter your last name";
             $code = 2;
         }
         else if(!preg_match("/^[a-zA-Z ]*$/",$lname)) {
             $error = "Only alphabets and white space are allowed";
             $code = 2;
         }
         else if (empty($email)) {
             $error = "Please enter your email address";
             $code = 3;
         }
         else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
             $error = "Invalid email format";
             $code = 3;
         }
         else if (empty($phone)) {
             $error = "Please enter your phone number";
             $code = 4;
         }
         else if (!preg_match ("/^[0-9]*$/", $phone) ) {
             $error = "Only numeric value is allowed";
             $code = 4;
         }
         else if (strlen ($phone) != 10) {
             $error = "Phone no must should be of 10 digits only";
             $code = 4;
         }
         else if (empty($password)) {
             $error = "Please enter your password!";
             $code = 5;
         } else if (strlen($password) < 8) {
             $error = "Password should be of minimum 8 characters";
             $code = 5;
         }
         else if (empty($cpassword)) {
             $error = "Please enter your confirm password!";
             $code = 6;
         }
         else if (($password) != $cpassword) {
             $error = "Passwords do not match";
             $code = 6;
         }
         else if (($password) != $cpassword) {
             $error = "Passwords do not match";
             $code = 6;
         }
         else if (empty($imgfile)) {
             $error = "Please upload your ID Card";
             $code = 7;
         }
         else if (!in_array($extension, $allowed_extensions)) {
             $error = "Invalid format. Only jpg/jpeg/png/gif formats are allowed";
             $code = 7;
         }
         else {

                 // Image uplaod
                 $imgnewfile = md5($imgfile) . $extension;
                 move_uploaded_file($_FILES["image"]["tmp_name"], "var/www/html/web_new/uploads/" . $imgnewfile);

                 $ret = mysqli_query($con, "select UserEmail from users where UserEmail='$email' || UserPhone='$phone'");
                 $result = mysqli_fetch_array($ret);

                 if ($result > 0) {
                     echo "<script>alert('This Email or Contact Number is already associated with another account');</script>";
                     echo "<script>window.location.href ='register.php'</script>";
                 } else {

                     $password = md5($_POST['password']);
                     $cpassword = md5($_POST['cpassword']);

                     $query = mysqli_query($con, "insert into users(UserFirstName, UserLastName, UserPhone, UserEmail,  UserPassword, UserIDCard) values('$fname', '$lname', '$phone', '$email', '$password', '$imgnewfile' )");

                     if ($query) {

                         // Mail
                         $from = 'Baggage Online Store <www.baggageonlinestore.com>';
                         $to = $_POST['email'];
                         $subject = 'Welcome to Baggage Online Store';
                         $body = 'You have sucessfully registered';
                         $header = "From: $from";

                         mail($to, $subject, $body, $header);
                         echo "<script>alert('Mail sent sucessfully')</script>";

                         // Display success message in case of successful registration
                         $_SESSION['success'] = "You have successfully registered";
                         header("location:login.php");

                     } else {

                         // Display failure message in case of unsuccessful registration
                         $_SESSION['error'] = "Something went wrong. Please try again";
                         header("location:register.php");

                     }
                 }
             }
}


if (strlen($_SESSION['uid']!=0))
{
    echo "<script>alert('You are already logged in');</script>";
    echo "<script> document.location ='index.php'; </script>";

}
else{
?>


<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Baggage Ecommerce Category Bootstrap Responsive Web Template | Sign Up :: W3layouts</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="Baggage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta tag Keywords -->
    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
    <!-- //Fonts -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        #formvalidation, #formvalid{
            height: 30px;
            margin-bottom: 20px;
            color: red;
            font-weight: bold
        }
    </style>


</head>

<body>
    <div class="main-sec inner-page">
        <!-- //header -->
        <?php include('header.php'); ?>
        <!-- //header -->

    </div>

    <!-- //banner-->
    <!--/login -->
    <section class="banner-bottom py-5">
        <div class="container">

            <div class="content-grid">
                <div class="text-center icon">
                    <span class="fa fa-user-circle-o"></span>
                </div>

                <div class="content-bottom">

                    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" role="form" method="post" enctype="multipart/form-data" name="signup" id="signup">
<!--                        Frontend validation-->
                        <div id="formvalidation"></div>

<!--                        Backend validation-->
                        <?php
                        if(isset($error))
                        {
                            ?>
                            <div id="formvalid">*<?php echo $error; ?></div>
                            <?php
                        }
                        ?>

                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="fname" id="fname" type="text" placeholder="First Name" onblur="cleartxt()" value="<?php if(isset($fname)){echo $fname;} ?>"  <?php if(isset($code) && $code == 1){ echo "autofocus"; }  ?> />
                            </div>
                        </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="lname" id="lname" type="text" placeholder="Last Name" onblur="cleartxt()" value="<?php if(isset($lname)){echo $lname;} ?>"  <?php if(isset($code) && $code == 2){ echo "autofocus"; }  ?> />
                            </div>
                        </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input type="email" name="email" id="email" placeholder="Email Address" onblur="cleartxt()" value="<?php if(isset($email)){echo $email;} ?>"  <?php if(isset($code) && $code == 3){ echo "autofocus"; }  ?> />
                            </div>
                        </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="phone" id="phone" type="tel" placeholder="Phone Number" onblur="cleartxt()" value="<?php if(isset($phone)){echo $phone;} ?>"  <?php if(isset($code) && $code == 4){ echo "autofocus"; }  ?> />
                            </div>
                        </div>
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="password" id="password" type="password" placeholder="Password" onblur="cleartxt()" value="<?php if(isset($password)){echo $password;} ?>"  <?php if(isset($code) && $code == 5){ echo "autofocus"; }  ?> />
                            </div>
                        </div>
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="cpassword" id="cpassword" type="password" placeholder="Confirm Password" onblur="cleartxt()" value="<?php if(isset($cpassword)){echo $cpassword;} ?>"  <?php if(isset($code) && $code == 6){ echo "autofocus"; }  ?> />
                            </div>
                        </div>

                        <div class="field-group">
                            <div class="content-input-field">
                                <label for="image">Upload an Identity Verification Document:</label>
                                <input type="file" id="image" name="image" onblur="cleartxt()" <?php if(isset($code) && $code == 7){ echo "autofocus"; }  ?>>
                            </div>
                        </div>

                        <div class="content-input-field">
                            <button type="submit" class="btn" name="submit" >Sign Up</button>
<!--                            onclick="return register()"-->
                        </div>
                        <div class="list-login-bottom text-center mt-lg-5 mt-4">

                            <a href="#" class="">By clicking Signup, I agree to your terms</a>
                            
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- /login -->

    <!-- footer -->
    <?php include('footer.php'); ?>
    <!-- //footer -->

    <script src="register.js"></script>

</body>

</html>

<?php } ?>