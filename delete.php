<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 12/11/20
 * Time: 1:58 PM
 */

session_start();
include('includes/dbconnection.php');

if(isset($_POST['delete']))
{

    $id = $_GET['del'];
    $sql = "DELETE FROM `address` WHERE AddressID=" . $id;
    if (mysqli_query($con, $sql)) {
        echo "<script>alert('Address deleted succesfully');</script>";
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
    
//if(isset($_POST['select'])) {
//    if (isset($_POST['delete_multiple'])) {
//
//        $id = $_GET['del'];
//        $sql = "DELETE FROM `address` WHERE AddressID IN ($id)";
//        if (mysqli_query($con, $sql)) {
//            echo "<script>alert('Address deleted succesfully');</script>";
//            echo "<script> document.location ='account.php'; </script>";
//        } else {
//            echo "Error: " . $sql . "<br>" . mysqli_error($con);
//        }
//        mysqli_close($con);
//
//    }
//}
//if (isset($_POST['delete_multiple']) && !isset($_POST['select'])){
//    echo "Please select address";
//}
?>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
        * {box-sizing: border-box;}

        button {
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.8;
        }

        button:hover {
            opacity:1;
        }

        .cancelbtn, .deletebtn {
            float: left;
            width: 50%;
        }

        .cancelbtn {
            background-color: #ccc;
            color: black;
        }

        .deletebtn {
            background-color: #f44336;
            color: white;
        }

        .container {
            padding: 16px;
            text-align: center;
        }

        .modal {
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: #474e5d;
        }

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto;
            border: 1px solid #888;
            width: 45%;
        }

        .close {
            position: absolute;
            right: 300px;
            top: 20px;
            font-size: 50px;
            font-weight: bold;
            color: #f1f1f1;
        }

        .close:hover,
        .close:focus {
            color: #f44336;
            cursor: pointer;
        }


        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }


    </style>

</head>
<body>
    <div id="modal" class="modal">
        <span class="close" title="Close Modal" id="close">×</span>
        <form class="modal-content" method="post">
            <div class="container">
                <h1>Delete Address</h1>
                <p>Are you sure you want to delete your Address?</p>
                <p class="text-warning"><small>This action cannot be undone</small></p>

                <div class="clearfix">
                    <button type="button" id="cancel" class="cancelbtn">Cancel</button>
                    <button type="submit" class="deletebtn" name="delete">Delete</button>
                </div>
            </div>
        </form>
    </div>

    <script>

        var modal = document.getElementById('modal');
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