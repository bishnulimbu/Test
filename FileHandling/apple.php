<?php
// echo readfile("./file.txt");
$myfile = fopen("./file.txt", 'r') or die("file not found.");
echo fread($myfile, filesize("file.txt"));
fclose($myfile);
?>
