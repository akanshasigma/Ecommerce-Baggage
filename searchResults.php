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
<html>
<head>
    <title>Search Results</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">

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
    <!-- Custom-Files -->

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
        li a{
            margin:10px;
        }
        th {
            width:150px;
        }
    </style>
</head>
<body>
<div class="main-sec inner-page">
    <!-- //header -->
    <?php include('header.php'); ?>
    <!-- //header -->

</div>
    <div style="width:1000px; margin:0 auto; margin-bottom: 50px">

        <h3 align="center" style="margin-top: 30px; margin-bottom: 20px">SEARCH RESULTS PAGE</h3>
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th>SR. NO.</th>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Product SKU</th>
                <th>Product Price</th>
                <th>Product Page</th>
            </tr>
            </thead>
            <tbody>
            <?php
            $search = $_SESSION['search'];
            if (isset($_GET['page_no']) && $_GET['page_no']!="") {
                $page_no = $_GET['page_no'];
            } else {
                $page_no = 1;
            }

            $total_records_per_page = 10;
            $offset = ($page_no-1) * $total_records_per_page;
            $previous_page = $page_no - 1;
            $next_page = $page_no + 1;
            $adjacents = "2";

            $result_count = mysqli_query($con,"SELECT COUNT(*) As total_records FROM products WHERE ProductName LIKE '%".$search."%' OR ProductSKU LIKE '%".$search."%'");
            $total_records = mysqli_fetch_array($result_count);
            $total_records = $total_records['total_records'];
            $total_no_of_pages = ceil($total_records / $total_records_per_page);
            $second_last = $total_no_of_pages - 1;

            $result = mysqli_query($con,"SELECT * FROM products WHERE ProductName LIKE '%".$search."%' OR ProductSKU LIKE '%".$search."%' LIMIT $offset, $total_records_per_page");
            $i=1;
            while($row = mysqli_fetch_array($result)){

                echo "<tr>
                  <td>$i</td>
                  <td>".$row['ProductID']."</td>
                  <td>".$row['ProductName']."</td>
                  <td>".$row['ProductSKU']."</td>
                  <td>$".$row['ProductPrice'].".00</td>
                  <td><a href='shop.php'>shop.php</a></td>
                  </tr>";
                $i++;
            }
            mysqli_close($con);
            ?>
            </tbody>
        </table>

        <div style='padding: 10px 20px 10px; border-top: dotted 1px #CCC; text-align: center;'>
            <strong>Page <?php echo $page_no." of ".$total_no_of_pages; ?></strong>
        </div>

        <ul class="pagination">

            <?php if($page_no > 1){
                echo "<li><a href='?page_no=1'>&lsaquo;&lsaquo; First</a></li>";
            } ?>

            <li <?php if($page_no <= 1){ echo "class='disabled'"; } ?>>
                <a <?php if($page_no > 1){ echo "href='?page_no=$previous_page'"; } ?>>Previous</a>
            </li>

            <?php
            if ($total_no_of_pages <= 10){
                for ($counter = 1; $counter <= $total_no_of_pages; $counter++){
                    if ($counter == $page_no) {
                        echo "<li class='active'><a>$counter</a></li>";
                    }else{
                        echo "<li><a href='?page_no=$counter'>$counter</a></li>";
                    }
                }
            }
            elseif($total_no_of_pages > 10){

                if($page_no <= 4) {
                    for ($counter = 1; $counter < 8; $counter++){
                        if ($counter == $page_no) {
                            echo "<li class='active'><a>$counter</a></li>";
                        }else{
                            echo "<li><a href='?page_no=$counter'>$counter</a></li>";
                        }
                    }
                    echo "<li><a>...</a></li>";
                    echo "<li><a href='?page_no=$second_last'>$second_last</a></li>";
                    echo "<li><a href='?page_no=$total_no_of_pages'>$total_no_of_pages</a></li>";
                }

                elseif($page_no > 4 && $page_no < $total_no_of_pages - 4) {
                    echo "<li><a href='?page_no=1'>1</a></li>";
                    echo "<li><a href='?page_no=2'>2</a></li>";
                    echo "<li><a>...</a></li>";
                    for ($counter = $page_no - $adjacents; $counter <= $page_no + $adjacents; $counter++) {
                        if ($counter == $page_no) {
                            echo "<li class='active'><a>$counter</a></li>";
                        }else{
                            echo "<li><a href='?page_no=$counter'>$counter</a></li>";
                        }
                    }
                    echo "<li><a>...</a></li>";
                    echo "<li><a href='?page_no=$second_last'>$second_last</a></li>";
                    echo "<li><a href='?page_no=$total_no_of_pages'>$total_no_of_pages</a></li>";
                }

                else {
                    echo "<li><a href='?page_no=1'>1</a></li>";
                    echo "<li><a href='?page_no=2'>2</a></li>";
                    echo "<li><a>...</a></li>";

                    for ($counter = $total_no_of_pages - 6; $counter <= $total_no_of_pages; $counter++) {
                        if ($counter == $page_no) {
                            echo "<li class='active'><a>$counter</a></li>";
                        }else{
                            echo "<li><a href='?page_no=$counter'>$counter</a></li>";
                        }
                    }
                }
            }
            ?>

            <li <?php if($page_no >= $total_no_of_pages){ echo "class='disabled'"; } ?>>
                <a <?php if($page_no < $total_no_of_pages) { echo "href='?page_no=$next_page'"; } ?>>Next</a>
            </li>
            <?php if($page_no < $total_no_of_pages){
                echo "<li><a href='?page_no=$total_no_of_pages'>Last &rsaquo;&rsaquo;</a></li>";
            } ?>
        </ul>


    </div>
<!-- footer -->
<?php include('footer.php'); ?>
<!-- //footer -->
</body>
</html>
<?php } ?>