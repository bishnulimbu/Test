<?php

$con= new mysqli('localhost','root','','Data');
if($con){
  echo "connecion is successful";
}else{
  die(mysqli_error($con));
}
