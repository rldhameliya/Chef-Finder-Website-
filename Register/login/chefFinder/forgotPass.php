<?php
$email = $_GET['email'];
$pass = $_GET['password'];

$connect = mysqli_connect('localhost', 'root', '', 'cheffinder');
if (!$connect) {
    die("Connection failed: " . mysqli_connect_error());
}

$query = "SELECT * FROM cheffinder WHERE Email_ID='$email'";
$result = mysqli_query($connect, $query);
$num = mysqli_num_rows($result);

if ($num == 1) {
    $q1 = "UPDATE cheffinder SET Password = '$pass' WHERE Email_ID = '$email'";
    if (mysqli_query($connect, $q1)) {
        echo "<script>alert('Password reset successfully');</script>";
        include "chefFinderLogin.html";
        exit;
    } else {
        echo "Error updating password: " . mysqli_error($connect);
    }
} else {
    echo "<script>alert('Invalid Email: $email');</script>";
    include "forgotPass.html";
}

mysqli_close($connect);
?>
