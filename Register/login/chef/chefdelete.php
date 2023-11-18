<?php

$con = new mysqli('localhost', "root", "", "cheffinder");
   $id = $_GET['i'];
    $query = "delete  from chef WHERE ID = '$id'" ;

    $data = mysqli_query($con,$query);
    
    if($data) {

      header('Location: http://localhost/WP/Register/chefRegistration/chefRegisteration.html');
      exit;
    }
    else {
        echo "<font color='red'>Failed to delete!";
    }

?>