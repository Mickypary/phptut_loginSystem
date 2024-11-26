<?php

// echo __DIR__ . "";
include "DB.php";
require  __DIR__ . "/../database/config.php";

class Login
{
  public static function isLoggedIn()
  {
    if (isset($_COOKIE['UID'])) {
      if (DB::query("SELECT user_id FROM token WHERE token = :token", array(':token' => sha1($_COOKIE['UID'])))) {
        $user_id = DB::query("SELECT user_id FROM token WHERE token = :token", array(':token' => sha1($_COOKIE['UID'])))[0]['user_id'];

        return $user_id;
      }
    }
  }
}
