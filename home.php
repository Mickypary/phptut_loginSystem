<?php
// Start the session
session_start();
if (!isset($_COOKIE['UID'])) {
  header("Location: index.php");
  die();
}

// require "database/config.php";
require "core/Login.php";
include "core/load.php";

// $uid = $_COOKIE['UID'];
if (!isset($_SESSION['UNAME'])) {
  $_SESSION['UNAME'] = $_COOKIE['UNAME'];
}

if (Login::isLoggedIn()) {
  echo 'loggedin';
  $user_id = Login::isLoggedIn();
} else {
  header("Location: index.php");
}


if (isset($_SESSION['UNAME']) == true && empty($_SESSION['UNAME']) == false) {
  $username = $loadFromUser->checkInput($_SESSION['UNAME']);
  // $profileId = $loadFromUser->userIdByUsername($username);
  // $profileData = $loadFromUser->getUserData($profileId);
  // $userData = $loadFromUser->getUserData($user_id);
}







?>



<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home page</title>
</head>

<body>
  <a id="" href="logout.php">Logout</a>
  <h2 id="demo">Welcome to Home Page <?= ucfirst($_SESSION['UNAME']) ?></h2>
</body>

</html>

<script>
  document.getElementById("logout").addEventListener('click', function(e) {
    e.preventDefault();
  });
  // document.getElementById("demo").style.color = "red";
</script>