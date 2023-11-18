<?php

$conn = mysqli_connect('localhost','root','','cheffinder');

if(isset($_GET['submit'])){

    $name=$_GET['Name'];
    $DOB=$_GET['DOB'];
    $phone= $_GET['ph'];
    $email=$_GET['email'];
    $pwd=$_GET['password'];
    $location=$_GET['location'];
   $insert = "INSERT INTO `cheffinder` (`Name`, `DOB`, `PhoneNo`, `Email_ID`, `Password`, `location`) VALUES ('$name', '$DOB', '$phone', '$email', '$pwd', '$location')";

   $result=mysqli_query($conn, $insert);

   include "regSubmit.html";

}

?> 