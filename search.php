<?php

session_start();
include('includes/dbconnection.php');


$output = '';
if(isset($_POST["query"]))
{
    $search = mysqli_real_escape_string($con, $_POST["query"]);
    $_SESSION['search'] = $search;
    $query = "SELECT * FROM products WHERE ProductName LIKE '%".$search."%' OR ProductSKU LIKE '%".$search."%' LIMIT 5";
}

$result = mysqli_query($con, $query);
if(mysqli_num_rows($result) > 0)
{

    while($row = mysqli_fetch_array($result))
    {
        $output .= '
<ul><li>
 <a>'.$row["ProductName"].'<br></a>
</li>

</ul>
';
    }
    echo $output;
    ;
}


?>