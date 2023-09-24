<?php

$con= new mysqli('localhost','root','','Data1');
if(!$con){
  die(mysqli_error($con));
}else{
  // echo "connecion is successful";
}
?>
