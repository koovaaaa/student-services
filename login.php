<?php
session_start();
if(!empty($_SESSION['loggedInUser'])){
    header("Location: index.php");
}

if(isset($_COOKIE['failedLogin'])){
   setcookie('failedLogin', false);
   include_once "pogresnaPrijavaNotifikacija.php";
}

if(isset($_COOKIE['loggedOut'])){
    setcookie('loggedOut', false);
    include_once "odjavaNotifikacija.php";
}


?>

<html>
<head>
    <title>II KOL Site - Login</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="loginStyle.css">
</head>
<body>
<div class="container">
    <h1>II KOL Site</h1>
    <form action="validateLogin.php" method="post" id="form">
        <label for="username">Username: </label><br>
        <input type="username" id="username" name="username"><br>
        <label for="password">Password: </label><br>
        <input type="password" id="password" name="password"><br>
        <button type="button" onclick="checkPassword()">Login</button>
    </form>
</div>
<script src="checkPassword.js"></script>
</body>
</html>