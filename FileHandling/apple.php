<?php
// echo readfile("./file.txt");
$myfile = fopen("./file.txt", 'r') or die("file not found.");
echo fgets($myfile);
echo fgets($myfile);
echo fgets($myfile);
echo fgets($myfile);
echo fgets($myfile);
fclose($myfile);
?>
