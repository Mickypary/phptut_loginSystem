<?php

// Start the session
session_start();

require "database/config.php";

?>




<!DOCTYPE html>
<html lang='en'>

<head>
  <meta charset='UTF-8' />
  <title>Registration Form</title>
  <meta name='viewport' content='width=device-width, initial-scale=1.0' />
</head>

<body background="register.jpg" style="background-repeat:no-repeat; background-size: cover">
  <div id="main_wrapper">
    <form action="" method="post" enctype="multipart/form-data">
      <table align="center" style="color: white; width: 365px; position: relative; top: 200px; border:1px solid #fff; height: 200px">
        <tr>
          <td style="position: relative; left: 50px; bottom:5px; background-color: #1d2247">
            <h3 style="text-align: center;">Registration Form</h3>
          </td>
        </tr>
        <tr>
          <td style="text-align: center;">Username</td>
          <td><input type="text" name="username" placeholder="Enter your username"></td>
        </tr>
        <tr>
          <td style="text-align: center;">Password</td>
          <td><input type="text" name="password" placeholder="Enter your password"></td>
        </tr>
        <tr>
          <td>
            <center><input type="submit" name="register" value="Register" style="background-color: #ede613; color: white; width:150px; height: 40px; position: relative; top: 5px"></center>
          </td>
        </tr>
        <tr>
          <td align="center">Upload Image</td>
          <td align="center"><input type="file" name="image" id=""></td>
        </tr>
      </table>
    </form>
  </div>
</body>

</html>




<?php

if (isset($_POST['register'])) {
  $username = trim($_POST['username']);
  $password = $_POST['password'];
  $image_url = 'ty.png';
  $hash_password = password_hash($password, PASSWORD_DEFAULT);

  // // prepare and bind
  $stmt = $conn->prepare("INSERT INTO admin (username,`password`,image) VALUES (?,?,?) ");
  $stmt->bind_param("sss", $username, $hash_password, $image_url);
  $stmt->execute();

  $_SESSION["username"] = $username;
  header("Location: home.php");

  $stmt->close();
  $conn->close();
}



?>