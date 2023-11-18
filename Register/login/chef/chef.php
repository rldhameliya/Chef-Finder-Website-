<?php
$email=$_GET['email'];
$pwd=$_GET['password'];



$connect=mysqli_connect('localhost','root','');
$db=mysqli_select_db($connect,'cheffinder');

$q1="select * from chef where Email_ID=\"$email\" and Password=\"$pwd\" ";

$result = mysqli_query($connect,$q1);

$num=mysqli_num_rows($result);

if($num==1){
    include "Chefdashboard.php";
}
else{
    include "alert.html";
}

?>
