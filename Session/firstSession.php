<?php
session_start();
?>
<html>
<head></head>
  <body>
<?php
    $_SESSION["favIcon"]= "Icon1";
    $_SESSION["name"]= "Ram";
    echo "value is: ".$_SESSION["favIcon"]."";
    echo "value is: ".$_SESSION["name"]."";
    ?>
  </body>
</html>
