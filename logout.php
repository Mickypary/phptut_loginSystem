<?php

// Start the session
session_start();

// $cookie = setcookie('username', $_SESSION['UNAME'], 60);

// remove all session variables
// session_unset();
// unset($_COOKIE['UID']);
setcookie('UID');

// unset($_SESSION['username']);
// unset($_SESSION['password']);


// destroy the session
session_destroy();


header("Location: index.php");
die();
