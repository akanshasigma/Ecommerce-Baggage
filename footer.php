<?php
// Newsletter Subscription
if(isset($_POST['subscribe']))
{
    $from='Baggage Online Store <www.baggageonlinestore.com>';
    $to = $_POST['email'];
    $subject = 'Welcome to Baggage Online Daily Update Newsletter';
    $body = 'Congratulations! You are subscribed to the Handbags Store mailing list to receive updates on new arrivals, special offers and other discount information.';
    $header= "From: $from";

    mail($to,$subject,$body,$header);
    // echo "($recipientAddr,$subjectStr,$mailBodyText,$headers)";
    echo "<script>alert('Newsletter subscibed successfully! Check your mail box')</script>";
}
?>

<!--/newsletter -->
<section class="newsletter-w3pvt py-5">
    <div class="container py-md-5">
        <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
            <p class="text-center">Subscribe to the Handbags Store mailing list to receive updates on new arrivals, special offers and other discount information.</p>
            <div class="row subscribe-sec">
                <div class="col-md-9">
                    <input type="email" class="form-control" placeholder="Enter Your Email.." name="email" required="">

                </div>
                <div class="col-md-3">

                    <button type="submit" class="btn submit" name="subscribe">Subscribe</button>
                </div>

            </div>
        </form>
    </div>
</section>
<!--//newsletter -->
<!--/shipping-->
<section class="shipping-wthree">
    <div class="shiopping-grids d-lg-flex">
        <div class="col-lg-4 shiopping-w3pvt-gd text-center">
            <div class="icon-gd"><span class="fa fa-truck" aria-hidden="true"></span>
            </div>
            <div class="icon-gd-info">
                <h3>FREE SHIPPING</h3>
                <p>On all order over $2000</p>
            </div>
        </div>
        <div class="col-lg-4 shiopping-w3pvt-gd sec text-center">
            <div class="icon-gd"><span class="fa fa-bullhorn" aria-hidden="true"></span></div>
            <div class="icon-gd-info">
                <h3>FREE RETURN</h3>
                <p>On 1st exchange in 30 days</p>
            </div>
        </div>
        <div class="col-lg-4 shiopping-w3pvt-gd text-center">
            <div class="icon-gd"> <span class="fa fa-gift" aria-hidden="true"></span></div>
            <div class="icon-gd-info">
                <h3>MEMBER DISCOUNT</h3>
                <p>Register &amp; save up to $29%</p>
            </div>

        </div>
    </div>

</section>
<!--//shipping-->
<!-- footer -->
<div class="footer_agileinfo_topf py-5">
    <div class="container py-md-5">
        <div class="row">
            <div class="col-lg-3 footer_wthree_gridf mt-lg-5">
                <h2><a href="index.php"><span>B</span>aggage
                    </a> </h2>
                <label class="sub-des2">Online Store</label>
            </div>
            <div class="col-lg-3 footer_wthree_gridf mt-md-0 mt-4">
                <ul class="footer_wthree_gridf_list">
                    <li>
                        <a href="index.php"><span class="fa fa-angle-right" aria-hidden="true"></span> Home</a>
                    </li>
                    <li>
                        <a href="about.php"><span class="fa fa-angle-right" aria-hidden="true"></span> About</a>
                    </li>
                    <li>
                        <a href="shop.php"><span class="fa fa-angle-right" aria-hidden="true"></span> Shop</a>
                    </li>
                    <li>
                        <a href="shop.php"><span class="fa fa-angle-right" aria-hidden="true"></span>Collections</a>
                    </li>

                </ul>
            </div>
            <div class="col-lg-3 footer_wthree_gridf mt-md-0 mt-sm-4 mt-3">
                <ul class="footer_wthree_gridf_list">
                    <li>
                        <a href="single.php"><span class="fa fa-angle-right" aria-hidden="true"></span> Extra Page</a>
                    </li>

                    <li>
                        <a href="#"><span class="fa fa-angle-right" aria-hidden="true"></span> Terms & Conditions</a>
                    </li>
                    <li>
                        <a href="single.php"><span class="fa fa-angle-right" aria-hidden="true"></span> Shop Single</a>
                    </li>
                    <li>
                        <a href="contact.php"><span class="fa fa-angle-right" aria-hidden="true"></span> Contact Us</a>
                    </li>
                </ul>
            </div>

            <div class="col-lg-3 footer_wthree_gridf mt-md-0 mt-sm-4 mt-3">
                <ul class="footer_wthree_gridf_list">
                    <li>
                        <a href="login.php"><span class="fa fa-angle-right" aria-hidden="true"></span> Login </a>
                    </li>

                    <li>
                        <a href="register.php"><span class="fa fa-angle-right" aria-hidden="true"></span>Register</a>
                    </li>
                    <li>
                        <a href="#"><span class="fa fa-angle-right" aria-hidden="true"></span>Privacy & Policy</a>
                    </li>

                </ul>
            </div>
        </div>

        <div class="w3ls-fsocial-grid">
            <h3 class="sub-w3ls-headf">Follow Us</h3>
            <div class="social-ficons">
                <ul>
                    <li><a href="#"><span class="fa fa-facebook"></span> Facebook</a></li>
                    <li><a href="#"><span class="fa fa-twitter"></span> Twitter</a></li>
                    <li><a href="#"><span class="fa fa-google"></span>Google</a></li>
                </ul>
            </div>
        </div>
        <div class="move-top text-center mt-lg-4 mt-3">
            <a href="#home"><span class="fa fa-angle-double-up" aria-hidden="true"></span></a>
        </div>
    </div>
</div>
<!-- //footer -->

<!-- copyright -->
<div class="cpy-right text-center py-3">
    <p>© 2019 Baggage. All rights reserved | Design by
        <a href="http://w3layouts.com"> W3layouts.</a>
    </p>

</div>
<!-- //copyright -->

