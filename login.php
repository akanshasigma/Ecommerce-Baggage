<!--
Author:W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<?php


include('includes/dbconnection.php');

session_start();
error_reporting(0);


// Display success message in case of successful registration
if(isset($_SESSION['success']))
{
    ?>
    <div>

        <?php echo "<script>alert('You have successfully registered');</script>";
        echo $_SESSION['success']; ?>
    </div>
    <?php
}
unset($_SESSION['success']);


if(isset($_POST['login']))
{
    $emailorphone =$_POST['emailorphone'];
    $password=md5($_POST['password']);
    $query=mysqli_query($con,"select UserID from users where  (UserEmail='$emailorphone' || UserPhone='$emailorphone') && UserPassword='$password' ");
    $ret=mysqli_fetch_array($query);
    if($ret>0){
        $_SESSION['uid']=$ret['UserID'];
        //  echo "<script> sweetAlert(\"Done...\", \"Registration completed\" ,\"success\");</script>";
        echo "<script>alert('You have successfully logged in');</script>";
        echo "<script type='text/javascript'> document.location = 'account.php'; </script>";
    }
    else{
        echo "<script>alert('Invalid Details');</script>";
        echo "<script type='text/javascript'> document.location ='login.php'; </script>";
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
    <title>Baggage Ecommerce Category Bootstrap Responsive Web Template | Sign In :: W3layouts</title>
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
                    <span class="fa fa-unlock-alt"></span>
                </div>
                <div class="content-bottom">
                    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="emailorphone" id="emailorphone" type="text" placeholder="Registered Email or Contact Number" required="">
                            </div>
                        </div>
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="password" id="password" type="password" placeholder="Password" required="">
                            </div>
                        </div>
                        <div class="content-input-field">
                            <button type="submit" class="btn" name="login">Sign In</button>
                        </div>
                        <ul class="list-login">
                            <li class="switch-slide">
                                <label class="switch">
                                    <input type="checkbox">
                                    <span class="slider round"></span>
                                    keep Logged in
                                </label>
                            </li>
                            <li>
                                <a href="#" class="text-right">Forgot password?</a>
                            </li>
                            <li class="clearfix"></li>
                        </ul>
                        <ul class="list-login-bottom">
                            <li class="">
                                <a href="register.php" class="">Don't have an Account?</a>
                            </li>
                            <li class="">
                                <a href="#" class="text-right">Need Help?</a>
                            </li>
                            <li class="clearfix"></li>
                        </ul>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- /login -->

    <!-- footer -->
    <?php include('footer.php'); ?>
    <!-- //footer -->

</body>

</html>

<?php } ?>