<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 12/11/20
 * Time: 1:42 PM
 */

session_start();
error_reporting(0);
include('includes/dbconnection.php');

$id=intval($_GET['id']);

$sql = mysqli_query($con, "select AddressID,Address,Address2,Country,State,City,Zip,Phone from address where AddressID='$id'");
$row=mysqli_fetch_array($sql);
$Address=$row['Address'];
$Address2=$row['Address2'];
$Country=$row['Country'];
$State=$row['State'];
$City=$row['City'];
$Postcode=$row['Zip'];
$Phone=$row['Phone'];

if(isset($_POST['update']))
{
    $address = $_POST['address'];
    $address2 = $_POST['address2'];
    $country = $_POST['country'];
    $state = $_POST['state'];
    $city = $_POST['city'];
    $postcode = $_POST['postcode'];
    $phone = $_POST['phone'];
    $sql = "UPDATE `address` SET `Address`='$address', `Address2`='$address2', `Country`='$country',`State`='$state',`City`='$city',`Zip`=$postcode,`Phone`=$phone WHERE AddressID=$id ";

    if (mysqli_query($con, $sql)) {
//            echo json_encode(array("statusCode"=>200));
        echo "<script>alert('Address updated succesfully');</script>";
        echo "<script> document.location ='account.php'; </script>";
    } else {

        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }
    mysqli_close($con);

}


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
        <title>Baggage Ecommerce Category Bootstrap Responsive Web Template | Home :: W3layouts</title>
        <!-- Meta tag Keywords -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="keywords" content="Baggage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

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

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        #update_form {
           margin: auto;
            width: 50%;
        }
    </style>

</head>
<body>

<!-- Update -->

            <form id="update_form" method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Edit Address</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close">×</button>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="id_u" name="id" class="form-control" value="<?php echo $row['AddressID']; ?>" required>

                    <div class="form-group">
                        <label>Address Line 1</label>
                        <input type="text" id="address_u" name="address" class="form-control" value="<?php echo $Address; ?>" required>
                    </div>
                    <div class="form-group">
                        <label>Address Line 2</label>
                        <input type="text" id="address2_u" name="address2" class="form-control" value="<?php echo $Address2; ?>" required>
                    </div>
                    <div class="form-group">
                        <label>Country</label>
                        <input type="text" id="country_u" name="country" class="form-control" value="<?php echo $Country; ?>" required>
                    </div>
                    <div class="form-group">
                        <label>State</label>
                        <input type="text" id="state_u" name="state" class="form-control" value="<?php echo $State; ?>" required>
                    </div>
                    <div class="form-group">
                        <label>City</label>
                        <input type="text" id="city_u" name="city" class="form-control" value="<?php echo $City; ?>" required>
                    </div>
                    <div class="form-group">
                        <label>Postcode</label>
                        <input type="tel" id="postcode_u" name="postcode" class="form-control" value="<?php echo $Postcode; ?>" required>
                    </div>
                    <div class="form-group">
                        <label>Phone</label>
                        <input type="tel" id="phone_u" name="phone" class="form-control" value="<?php echo $Phone; ?>" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel" id="cancel">
                    <button type="submit" class="btn btn-primary" id="update" name="update">Update</button>

                </div>
            </form>
    <script>

        var modal = document.getElementById('update_form');
        var cancel = document.getElementById('cancel');
        var close = document.getElementById('close');

        window.onclick = function(event) {
            if (event.target == modal) {
                window.location.href = "account.php";
            }
            if (event.target == cancel) {
                window.location.href = "account.php";
            }
            if (event.target == close) {
                window.location.href = "account.php";
            }
        }

    </script>
</body>
</html>
<?php } ?>