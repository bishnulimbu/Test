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
    echo $_SESSION["favIcon"].".<br>";
    echo $_SESSION["name"];
    ?>
  </body>
</html>
