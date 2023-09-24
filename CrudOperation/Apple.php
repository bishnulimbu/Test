<?php
include 'connect.php';
if(isset($_POST['submit'])){
  $name= $_POST['name'];
  $email= $_POST['email'];
  $phone= $_POST['phone'];
  $gender= $_POST['gender'];

  $sql="INSERT INTO Table2(name, email, phone, gender)
  values('$name','$email','$phone','$gender')";

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
<!-- <style> -->
<!--     body{ -->
<!--       margin: 0; -->
<!--       padding: 0; -->
<!--       display: flex; -->
<!--       justify-content: center; -->
<!--       height: 90vh; -->
<!--       align-items:center; -->
<!--     } -->
<!-- </style> -->
  </head>
  <body>
    <div class="center-form">
   <form>
          <br>
    <label for="name" placeholder="Write your name">Name</label>
    <input type="text" name="name"><br><br>
    <label for="email" placeholder="Write your email">Email</label>
    <input type="text" name="email"><br><br>
    <label for="phone" placeholder="Write your phone no">phone</label>
    <input type="number" name="phone"><br><br>
    <label for="gender" placeholder="Write your gender">gender</label>
    <input type="text" name="gender"><br><br>
        <button type="submit" name="submit">Submit</button>
      </form>
        </div>
  </body>
</html> 

