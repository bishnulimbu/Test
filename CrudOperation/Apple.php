<?php
include 'connect.php';
if(isset($_POST['submit'])){
  $name= $_POST['name'];

  $sql="INSERT INTO Table1(name)
  values('$name')";

  $result=mysqli_query($con, $sql);
  if($result){
    echo "Data inserted successfully";
    
  }else{
    die(mysqli_error($con));
  }
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  </head>
  <body>
    <form>
   <form method="post">
    <label for="name" placeholder="Write your name">Name</label>
    <input type="text" name="name">
        <button type="submit" name="sumbit">Submit</button>
      </form>

  
  </body>
</html> 


