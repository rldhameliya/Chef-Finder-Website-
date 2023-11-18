<?php

$conn = mysqli_connect('localhost','root','','cheffinder');

if(isset($_GET['submit'])){

    $name = $_GET['Name'];
    $speciality = $_GET['speciality'];
    $Availability = $_GET['Time'];
    $Experience = $_GET['exp'];
    $ServiceCity = $_GET['location'];
    $salary = $_GET['payment'];
    $CookingType = $_GET['food_region'];
    $phone = $_GET['ph'];
    $email = $_GET['email'];
    $pwd = $_GET['password'];

   $insert = "INSERT INTO `chef` (`Name`, `Speciality`, `Availability`, `Experience`, `Service City`, `Expected Payment/head`, `Cooking Type`, `Phone No`, `Email_ID`, `Password`) VALUES ('$name', '$speciality', ' $Availability', '$Experience', '$ServiceCity', '$salary', '$CookingType', '$phone', '$email', '$pwd')";

   $result=mysqli_query($conn, $insert);

   include "regSubmit.html";

}

?> 