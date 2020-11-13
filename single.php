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
    <title>Baggage Ecommerce Category Bootstrap Responsive Web Template | Single :: W3layouts</title>
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
    <!--/banner-bottom -->
    <section class="banner-bottom py-5">
        <div class="container py-md-5">
            <!-- product right -->
            <div class="left-ads-display wthree">
                <div class="row">
                    <div class="desc1-left col-md-6">
                        <img src="images/bag1.png" class="img-fluid" alt="">
                    </div>
                    <div class="desc1-right col-md-6 pl-lg-3">
                        <h3>Lorem ipsum dolor sit amet laoret.</h3>
                        <h5>Rs. 499 <span>599</span> <a href="#">Click for offer</a></h5>
                        <div class="available mt-3">
                            <form action="#" method="post" class="w3pvt-newsletter subscribe-sec">
                                <input type="email" name="Email" placeholder="Enter your email..." required="">
                                <button class="btn submit">Check</button>

                            </form>
                            <span><a href="#">login to save in wishlist </a></span>
                            <p>Lorem Ipsum has been the industry's standard since the 1500s. Praesent ullamcorper dui turpis.. </p>
                        </div>
                        <div class="share-desc mt-5">
                            <div class="share text-left">
                                <h4>Share Product :</h4>
                                <div class="social-ficons mt-4">
                                    <ul>
                                        <li><a href="#"><span class="fa fa-facebook"></span> Facebook</a></li>
                                        <li><a href="#"><span class="fa fa-twitter"></span> Twitter</a></li>
                                        <li><a href="#"><span class="fa fa-google"></span>Google</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>


                </div>
                <div class="row sub-para-w3pvt my-5">

                    <h3 class="shop-sing">Lorem ipsum dolor sit amet</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore magna aliqua.</p>
                    <p class="mt-3 italic-blue">Consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore magna aliqua.</p>
                    <p class="mt-3">Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore magna aliqua.</p>
                </div>


                <!--/row-->
                <h3 class="title-wthree-single my-lg-5 my-4 text-left">Featured Bags</h3>
                <div class="row shop-wthree-info text-center">
                    <div class="col-md-3 shop-info-grid text-center mt-4">
                        <div class="product-shoe-info shoe">
                            <div class="men-thumb-item">
                                <img src="images/b1.jpg" class="img-fluid" alt="">

                            </div>
                            <div class="item-info-product">
                                <h4>
                                    <a href="single.php">Messenger Bag </a>
                                </h4>

                                <div class="product_price">
                                    <div class="grid-price">
                                        <span class="money"><span class="line">$799</span> $675.00</span>
                                    </div>
                                </div>
                                <ul class="stars">
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 shop-info-grid text-center mt-4">
                        <div class="product-shoe-info shoe">
                            <div class="men-thumb-item">
                                <img src="images/b2.jpg" class="img-fluid" alt="">

                            </div>
                            <div class="item-info-product">
                                <h4>
                                    <a href="single.php">Shoulder Bag (Pink) </a>
                                </h4>

                                <div class="product_price">
                                    <div class="grid-price">
                                        <span class="money"><span class="line">$799</span> $675.00</span>
                                    </div>
                                </div>
                                <ul class="stars">
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 shop-info-grid text-center mt-4">
                        <div class="product-shoe-info shoe">
                            <div class="men-thumb-item">
                                <img src="images/b3.jpg" class="img-fluid" alt="">

                            </div>
                            <div class="item-info-product">
                                <h4>
                                    <a href="single.php">Sling Bag </a>
                                </h4>

                                <div class="product_price">
                                    <div class="grid-price">
                                        <span class="money"><span class="line">$599</span> $475.00</span>
                                    </div>
                                </div>
                                <ul class="stars">
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 shop-info-grid text-center mt-4">
                        <div class="product-shoe-info shoe">
                            <div class="men-thumb-item">
                                <img src="images/b4.jpg" class="img-fluid" alt="">

                            </div>
                            <div class="item-info-product">
                                <h4>
                                    <a href="single.php">Tote (Blue) </a>
                                </h4>

                                <div class="product_price">
                                    <div class="grid-price">
                                        <span class="money"><span class="line">$799</span> $675.00</span>
                                    </div>
                                </div>
                                <ul class="stars">
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
                <!--//row-->

            </div>
        </div>
    </section>
    <!-- /banner-bottom -->

    <!-- footer -->
    <?php include('footer.php'); ?>
    <!-- //footer -->

</body>

</html>
<?php } ?>