<?php
session_start();
?>
<html>
<head></head>
  <body>
<?php
    $_SESSION["favIcon"]= "Icon1";
    $_SESSION["name"]= "Ram";
    ?>
<?php
    print_r($SESSION);
    ?>
  </body>
</html>
