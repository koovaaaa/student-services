<?php
require "connection.php";
$username = $_POST['username'];
$password = md5($_POST['password']);

$sql = "select * from users where users.username = '{$username}' AND users.password = '{$password}'";
$query = mysqli_query($db, $sql);
$result = mysqli_fetch_assoc($query);

var_dump($result);
var_dump($username);
var_dump($password);

if($username === $result['username'] && $password === $result['password'])
{
    session_start();
    $_SESSION['loggedInUser'] = $result;
    header("Location: index.php");
}else{
    setcookie("failedLogin", true);
    header("Location: login.php");
}



?>