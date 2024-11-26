<?php

// Start the session
session_start();

require "database/config.php";

// if (isset($_SESSION['username']) || isset($_COOKIE['username'])) {
//   header("location: home.php");
//   die();
// }





?>




<!DOCTYPE html>
<html lang='en'>

<head>
  <meta charset='UTF-8' />
  <title>Login Form</title>
  <meta name='viewport' content='width=device-width, initial-scale=1.0' />
</head>

<body background="city.jpg" style="background-size: cover; background-repeat: no-repeat">
  <div id="main_wrapper">
    <form action="" method="post" enctype="multipart/form-data">
      <table align="center" style="color: white; width: 365px; position: relative; top: 200px; border:1px solid #fff; height: 200px">
        <tr>
          <td style="position: relative; left: 50px; bottom:5px; background-color: #1d2247">
            <h3 style="text-align: center;">Login Form</h3>
          </td>
        </tr>
        <tr>
          <td style="text-align: center;">Username</td>
          <td><input type="text" name="username" value="<?php if (isset($_COOKIE['UNAME'])) echo $_COOKIE['UNAME'] ?>" placeholder="Enter your username"></td>
        </tr>
        <tr>
          <td style="text-align: center;">Password</td>
          <td><input type="text" name="password" value="<?php if (isset($_COOKIE['password'])) echo $_COOKIE['password'] ?>" placeholder="Enter your password"></td>
        </tr>
        <tr>
          <td>

            <center><input type="checkbox" name="rem_me" <?php if (isset($_COOKIE['UNAME'])) { ?> checked <?php } ?> id="rem"><label for="rem">Remember Me</label><input type="submit" name="signin" value="Login" style="background-color: #42729b; color: white; width:100px; height: 40px; position: relative; top: 5px"></center>
          </td>
          <td>
            <a href="register.php">
              <center><input type="button" name="register" value="Register" style="background-color: #ede613; color: white; width:150px; height: 40px; position: relative; top: 5px"></center>
            </a>
          </td>
        </tr>
      </table>
    </form>
  </div>
</body>

</html>

<?php

if (isset($_POST['signin'])) {
  $username = trim($_POST['username']);
  $password = $_POST['password'];

  // MySQLi Procedural
  // $sql = "SELECT * FROM admin WHERE username = '$username' AND password = '$password'";
  // $result = mysqli_query($conn, $sql);

  // if (mysqli_num_rows($result) > 0) {
  //   // output data of each row
  //   header("Location: home.php");
  // } else {
  //   echo '<script>alert("Invalid username or password")</script>';
  // }

  // mysqli_close($conn);

  // Without prepare
  // $sql = "SELECT id, firstname, lastname FROM MyGuests WHERE lastname='Doe'";
  // $result = $conn->query($sql);

  // if ($result->num_rows > 0) {
  //   echo "<table><tr><th>ID</th><th>Name</th></tr>";
  //   // output data of each row
  //   while($row = $result->fetch_assoc()) {
  //     echo "<tr><td>".$row["id"]."</td><td>".$row["firstname"]." ".$row["lastname"]."</td></tr>";
  //   }
  //   echo "</table>";
  // } else {
  //   echo "0 results";
  // }
  // $conn->close();

  // // prepare and bind
  $stmt = $conn->prepare("SELECT * FROM admin WHERE username = ?");
  $stmt->bind_param("s", $username);
  $stmt->execute();
  $result = $stmt->get_result();

  if ($user = $result->fetch_assoc()) {
    if (password_verify($password, $user['password'])) {
      // Set session variables
      $_SESSION["UNAME"] = $username;


      // Cookies
      $tstrong = true;
      $token = bin2hex(openssl_random_pseudo_bytes(64, $tstrong));

      // token data for insert into token table
      $sha_token = sha1($token);
      $user_id = $user['id'];

      $stmt = $conn->prepare("INSERT INTO token (token,`user_id`) VALUES (?,?) ");
      $stmt->bind_param("si", $sha_token, $user_id);
      $stmt->execute();

      $arr_cookie_options = array(
        // 'expires' => time() + 60 * 60 * 24 * 30,
        'expires' => time() + 60 * 60 * 24 * 7,
        'path' => '/',
        'domain' => NULL, // leading dot for compatibility or use subdomain
        'secure' => NULL,     // true or false
        'httponly' => true,    // or false
        // 'samesite' => 'None' // None || Lax  || Strict
      );

      setcookie('UID', $token, $arr_cookie_options);


      // setcookie('UID', $user['id'], time() + (60 * 60 * 24 * 30));

      if (!empty($_POST['rem_me'])) {
        setcookie('UNAME', $username, time() + (10 * 365 * 24 * 60 * 60));
        setcookie('password', $password, time() + (10 * 365 * 24 * 60 * 60));
      } else {
        if (isset($_COOKIE['UNAME'])) {
          setcookie('UNAME', "");
        }
        if (isset($_COOKIE['password'])) {
          setcookie('password', "");
        }
      }



      header("Location: home.php");
    }
  } else {

    echo '<script>alert("Invalid username or password")</script>';
  }

  // while ($row = $result->fetch_assoc()) { 
  //   echo $row['name'];
  // }
}



?>