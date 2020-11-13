<?php
session_start();
error_reporting(0);
/**
 * Created by PhpStorm.
 * User: root
 * Date: 10/11/20
 * Time: 1:39 PM
 */


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
else {


    if (isset($_POST['add'])) {
        $uid = $_SESSION['uid'];
        $address = $_POST['address'];
        $address2 = $_POST['address2'];
        $country = $_POST['country'];
        $state = $_POST['state'];
        $city = $_POST['city'];
        $postcode = $_POST['postcode'];
        $phone = $_POST['phone'];

        $sql = "INSERT INTO `address`(`User_ID`, `Address`, `Address2`, `Country`, `State`, `City`, `Zip`, `Phone`) VALUES ($uid, '$address', '$address2','$country','$state','$city',$postcode, $phone)";
        if (mysqli_query($con, $sql)) {
//            echo json_encode(array("statusCode"=>200));
            echo "<script>alert('Address added succesfully');</script>";
            echo "<script> document.location ='account.php'; </script>";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($con);
        }
        mysqli_close($con);
    }
    
}
?>

