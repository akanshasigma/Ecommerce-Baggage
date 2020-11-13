<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 9/11/20
 * Time: 4:16 PM
 */

session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['uid']==0)) {
    header('location:logout.php');
} else{

?><!--
Author:W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Baggage Ecommerce Category Bootstrap Responsive Web Template | Home :: W3layouts</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
<div class="main-sec inner-page">
    <!-- header -->
    <?php include('header.php'); ?>
    <!-- //header -->
</div>


<div class="container">
    <p id="success"></p>
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Manage Address</h2>
                </div>
                <?php $result = mysqli_query($con,"SELECT * FROM address WHERE User_ID=$uid");
                $row = mysqli_fetch_array($result); ?>
                <div class="col-sm-6">
                    <a href="#addEmployeeModal" class="btn btn-primary" data-toggle="modal" style="margin-left: 380px"><i class="material-icons"></i> <span>Add New Address</span></a>
<!--                   <a href="delete.php?del=--><?php //echo $row["AddressID"]; ?><!--" class="btn btn-danger" id="delete_multiple" name="delete_multiple"><i class="material-icons"></i> <span>Delete Address</span></a>-->
                </div>
            </div>
        </div>
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>
<!--							<span class="custom-checkbox">-->
<!--								<input type="checkbox" id="selectAll" name="selectAll">-->
<!--								<label for="selectAll"></label>-->
<!--							</span>-->
                </th>
                <th>SR. NO</th>
                <th>ADDRESS LINE 1</th>
                <th>ADDRESS LINE 2</th>
                <th>COUNTRY</th>
                <th>STATE</th>
                <th>CITY</th>
                <th>POSTCODE</th>
                <th>PHONE</th>
                <th>ACTION</th>
            </tr>
            </thead>
            <tbody>

            <?php


            $result = mysqli_query($con,"SELECT * FROM address WHERE User_ID=$uid");
            $i=1;
            while($row = mysqli_fetch_array($result)) {
                ?>

                <tr id="<?php echo $row["AddressID"]; ?>">
                    <td>
<!--							<span class="custom-checkbox">-->
<!--								<input type="checkbox" class="user_checkbox" name="select">-->
<!--								<label for="checkbox2"></label>-->
<!--							</span>-->
                    </td>
                    <td><?php echo $i; ?></td>
                    <td><?php echo $row["Address"]; ?></td>
                    <td><?php echo $row["Address2"]; ?></td>
                    <td><?php echo $row["Country"]; ?></td>
                    <td><?php echo $row["State"]; ?></td>
                    <td><?php echo $row["City"]; ?></td>
                    <td><?php echo $row["Zip"]; ?></td>
                    <td><?php echo $row["Phone"]; ?></td>
                    <td>


<!--                            <button class="btn btn-primary" data-toggle="modal" data-target="#editEmployeeModal">-->
<!--                                Edit-->
<!--                            </button>-->
    
                            <a href="update.php?id=<?php echo $row["AddressID"]; ?>" class="edit" data-toggle="modal">
                            <i class="material-icons update" data-toggle="tooltip" title="Edit"></i>
<!--                               data-id="--><?php //echo $row["AddressID"]; ?><!--"-->
<!--                               data-userid="--><?php //echo $row["User_ID"]; ?><!--"-->
<!--                               data-address="--><?php //echo $row["Address"]; ?><!--"-->
<!--                               data-address2="--><?php //echo $row["Address2"]; ?><!--"-->
<!--                               data-country="--><?php //echo $row["Country"]; ?><!--"-->
<!--                               data-state="--><?php //echo $row["State"]; ?><!--"-->
<!--                               data-city="--><?php //echo $row["City"]; ?><!--"-->
<!--                               data-postcode="--><?php //echo $row["Zip"]; ?><!--"-->
<!--                               data-phone="--><?php //echo $row["Phone"]; ?><!--"-->

<!--                            <a href="?edit="--><?php //echo $row['AddressID']; ?><!-- > </a>-->
                        </a>
                        <a href="delete.php?del=<?php echo $row["AddressID"]; ?>" class="delete" data-toggle="modal">
                            <i class="material-icons" data-toggle="tooltip" title="Delete"></i></a>
                    </td>
                </tr>
                <?php
                $i++;
            }

            ?>
            </tbody>
        </table>
    </div>
</div>

<!-- Add -->
<div id="addEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="user_form" method="post" action="insert.php">
                <div class="modal-header">
                    <h4 class="modal-title">Add User</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Address Line 1</label>
                        <input type="text" id="address" name="address" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Address Line 2</label>
                        <input type="text" id="address2" name="address2" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Country</label>
                        <input type="text" id="country" name="country" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>State</label>
                        <input type="text" id="state" name="state" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>City</label>
                        <input type="text" id="city" name="city" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Postcode</label>
                        <input type="tel" id="postcode" name="postcode" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Phone</label>
                        <input type="tel" id="phone" name="phone" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="hidden" value="1" name="type">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <button type="submit" class="btn btn-primary" id="btn-add" name="add">Add</button>
                </div>
            </form>
        </div>
    </div>
</div>


<!-- footer -->
<?php include('footer.php'); ?>
<!-- //footer -->
<!--<script>-->
<!--    $(function() {-->
<!--        $('#editEmployeeModal').on('show.bs.modal', function(e) {-->
<!--            $('.modalTextInput').val('');-->
<!--            let btn = $(e.relatedTarget); // e.related here is the element that opened the modal, specifically the row button-->
<!--            let id = btn.data('id'); // this is how you get the of any `data` attribute of an element-->
<!--            $('.saveEdit').data('id', id); // then pass it to the button inside the modal-->
<!--        })-->
<!--</script>-->
</body>
</html>

<?php }  ?>