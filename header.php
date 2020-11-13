<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 9/11/20
 * Time: 2:43 PM
 */
include('includes/dbconnection.php');
session_start();
error_reporting(0);
?>

<!-- //header -->
<header class="py-sm-3 pt-3 pb-2" id="home">
    <div class="container">
        <!-- nav -->
        <div class="top-w3pvt d-flex">
            <div id="logo">
                <h1> <a href="index.php"><span class="log-w3pvt">B</span>aggage</a> <label class="sub-des">Online Store</label></h1>
            </div>


            <?php

            $uid=$_SESSION['uid'];
            $ret=mysqli_query($con,"select * from users where UserID='$uid'");
            $row=mysqli_fetch_array($ret);
            $f_name = $row['UserFirstName'];
            $l_name = $row['UserLastName'];

            if (isset($uid))  { ?>
                <div class="forms ml-auto">

                    <a href="account.php" class="btn"><span class="fa fa-user-circle-o"></span>  <?php

                        ?> Welcome <?php echo $f_name . " " . $l_name;?></a>
                    <a href="logout.php" class="btn"><span class="fa fa-pencil-square-o"></span> Log out</a>
                </div>
            <?php } else { ?>
                <div class="forms ml-auto">
                    <a href="login.php" class="btn"><span class="fa fa-user-circle-o"></span> Sign In</a>
                    <a href="register.php" class="btn"><span class="fa fa-pencil-square-o"></span> Sign Up</a>
                </div>
            <?php }  ?>

        </div>
        <div class="nav-top-wthree">
            <nav>
                <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
                <input type="checkbox" id="drop" />
                <ul class="menu">
                    <li class="active"><a href="index.php">Home</a></li>
                    <li><a href="about.php">About Us</a></li>
                    <li>
                        <!-- First Tier Drop Down -->
                        <label for="drop-2" class="toggle">Dropdown <span class="fa fa-angle-down" aria-hidden="true"></span>
                        </label>
                        <a href="#">Dropdown <span class="fa fa-angle-down" aria-hidden="true"></span></a>
                        <input type="checkbox" id="drop-2" />
                        <ul>
                            <li><a href="coming.php" class="drop-text">Services</a></li>
                            <li><a href="about.php" class="drop-text">Features</a></li>
                            <li><a href="single.php" class="drop-text">Single Page</a></li>

                        </ul>
                    </li>

                    <li><a href="shop.php">Collections</a></li>
                    <li><a href="contact.php">Contact</a></li>
                </ul>
            </nav>
            <!-- //nav -->
            <div class="search-form ml-auto">
                <div class="form-w3layouts-grid">
                    <form action="searchResults.php" method="post" class="newsletter">
                        <input class="search" type="search" id="search" name="search" placeholder="Search here..." required="">
                        <button type="submit" class="form-control btn" name="search_results" value=""><span class="fa fa-search"></span></button>
                    </form>
                </div>
                <br>
                <div id="display"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</header>
<script src="script.js"></script>