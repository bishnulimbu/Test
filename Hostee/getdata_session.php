<?php
session_start();
if(isset($_SESSION['username'])){
echo "This is the first sentence...:".$_SESSION['username'];
echo "<br> Your new favCat as you mean to have...: ".$_SESSION['favCat'];
}else{
  echo "You are not allow to see this....";
}
?>
