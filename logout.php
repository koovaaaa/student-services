<?php
session_start();
session_destroy();
setcookie("loggedOut", true);
header("Location: login.php");
?>