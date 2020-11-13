<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 9/11/20
 * Time: 4:03 PM
 */

session_start();
session_unset();
session_destroy();
header('location:login.php');

?>