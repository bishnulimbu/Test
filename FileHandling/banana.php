<?php
$myfile = fopen("file1.txt", "w") or die("Unable to open file!");
$txt = "John Doe\n";
fwrite($myfile, $txt);
$txt = "John Doe\n";
fwrite($myfile, $txt);
$txt = "John Doe\n";
fwrite($myfile, $txt);
fclose($myfile);
?>
