<?php
// $x = 1200009;
// echo "hellow world";
// var_dump($x);
session_start();
session_unset();
session_destroy();
$_SESSION['username'] = "Rmammana";
$_SESSION['favCat'] = "dau";
?>
