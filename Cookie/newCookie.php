<?php
$cookie_name = "LaptopBrand";
$cookie_value = "Zyphreus";
setcookie($cookie_name, $cookie_value, time()+86400, '/');
?>
<html>
<head></head>
  <body>
<?php
if(isset($_COOKIE[$cookie_name])){
  echo ("cookie is set. '".$cookie_name ."'");
  echo ("value is:". $_COOKIE[$cookie_name]);
}else
{
  echo ("cookie named '".$cookie_name. "':is not set");
}
  ?>
</body>
</html>

