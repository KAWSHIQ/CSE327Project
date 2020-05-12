<?php
include("config/connect.php");
session_start();
session_unset();

header("location:login.php?logout=Bye Bye!");






?>
