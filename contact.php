<!--
Author:W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<?php

session_start();
include('includes/dbconnection.php');

$uid=$_SESSION['uid'];
$ret=mysqli_query($con,"select UserFirstName from users where UserID='$uid'");
$row=mysqli_fetch_array($ret);
$name=$row['UserFirstName'];

if (strlen($_SESSION['uid']==0))
{
    echo "<script>alert('Please Login First');</script>";
    echo "<script> document.location ='index.php'; </script>";

}
else{
?>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Baggage Ecommerce Category Bootstrap Responsive Web Template | Contact :: W3layouts</title>
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

    <!--/contact -->
    <section class="banner-bottom py-5">
        <div class="container py-md-5">
            <h3 class="title-wthree mb-lg-5 mb-4 text-center">Contact Us </h3>
            <div class="row contact_information">
                <div class="col-md-6">
                    <div class="contact_right p-lg-5 p-4">
                        <form action="#" method="post">
                            <div class="field-group">

                                <div class="content-input-field">
                                    <input name="text1" id="text1" type="text" value="" placeholder="User Name" required="">
                                </div>
                            </div>
                            <div class="field-group">

                                <div class="content-input-field">
                                    <input name="text1" id="text1" type="email" value="" placeholder="User Email" required="">
                                </div>
                            </div>
                            <div class="field-group">

                                <div class="content-input-field">
                                    <input name="text1" id="text3" type="text" value="" placeholder="User Phone" required="">
                                </div>
                            </div>
                            <div class="field-group">
                                <div class="content-input-field">
                                    <input name="password" id="myInput" type="Password" placeholder="Password">
                                </div>
                            </div>
                            <div class="field-group">
                                <div class="content-input-field">
                                    <textarea placeholder="Your Message Here..." required=""></textarea>
                                </div>
                            </div>
                            <div class="content-input-field">
                                <button type="submit" class="btn">Submit</button>
                            </div>

                        </form>
                    </div>
                </div>
                <div class="col-md-6 contact_left p-4">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6350041.310790406!2d30.68773492426509!3d39.0014851732576!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14b0155c964f2671%3A0x40d9dbd42a625f2a!2sTurkey!5e0!3m2!1sen!2sin!4v1522753415269"></iframe>
                </div>

                <div class="col-lg-4 col-md-6 mt-lg-4 contact-inn-w3pvt">
                    <div class="mt-5 information-wthree">
                        <h4 class="text-uppercase mb-4"><span class="fa fa-comments"></span> Communication</h4>
                        <p class="cont-wthree-para mb-3 text-capitalize">for general queries, including property Sales and constructions, please email us at <a href="mailto:info@example.com">info@example.com</a></p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-lg-4 contact-inn-w3pvt">
                    <div class="mt-5 information-wthree">
                        <h4 class="text-uppercase mb-4"><span class="fa fa-life-ring"></span> Technical Support</h4>
                        <p class="cont-wthree-para mb-3 text-capitalize">we are ready to help! if you have any queries or issues, contact us for support <label>+12 388 455 6789</label>.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-lg-4 contact-inn-w3pvt">
                    <div class="mt-5 information-wthree">
                        <h4 class="text-uppercase mb-4"><span class="fa fa-map"></span> Others</h4>
                        <p class="cont-wthree-para mb-3 text-capitalize">we are ready to help! if you have any queries or issues, contact us for support <label>+12 388 455 6789</label>.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//contact -->


    <!-- footer -->
    <?php include('footer.php'); ?>
    <!-- //footer -->


</body>

</html>
<?php } ?>