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
<style>
    body{
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      height: 100vh;
      align-items:center;
    }
</style>
  </head>
  <body>
    <div class="center-form">
   <form>
          <br>
    <label for="name">Name</label>
    <input type="text" placeholder="Write your name" name="name"><br><br>
    <label for="email">Email</label>
    <input type="text" placeholder="Write your email" name="email"><br><br>
    <label for="phone">phone</label>
    <input type="number" placeholder="Write your phone no" name="phone"><br><br>
    <label for="gender">gender</label>
    <input type="text" placeholder="Write your gender" name="gender"><br><br>
        <button type="submit" name="submit">Submit</button>
      </form>
        </div>
  </body>
</html> 

