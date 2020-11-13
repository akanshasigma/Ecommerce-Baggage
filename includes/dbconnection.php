<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 9/11/20
 * Time: 2:59 PM
 */
$con=mysqli_connect("localhost", "admin", "Sigma@123", "assignment");
if(mysqli_connect_errno()){
    echo "Connection Fail".mysqli_connect_error();
}
?>