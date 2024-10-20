<?php
$insert = false;
    if (isset($_POST['name'])) {
   
    $server = "localhost";
    $username = "root";
    $password = "";
    $database = "trip";

    $conn = mysqli_connect($server, $username, $password, $database);

    if(!$conn){
        die("Connection failed: " . mysqli_connect_error());
    }
    // echo "success connecting to the db";
    $name = $_POST['name'];
    $age = $_POST['age'];
    $gender = $_POST['gender'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $desc = $_POST['desc'];

    $sql = "INSERT INTO `trip` (`name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) VALUES ('$name', '$age', '$gender', '$email', '$phone', '$desc', current_timestamp());";
    // echo $sql;


    if($conn->query($sql) == true){
        // echo "success";
        $insert = true;
    }
    else{
        echo "error : $sql <br> $conn -> error";
        $not_inset = true;
    }
    $conn-> close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to travel form</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
</head>
<body>
    <img class="bg" src="https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=600" alt="">
    <div class="container">
        <h1>Welcome to College trip</h1>
        <?php
        if ($insert == true) {
            echo " <p>Thanks for joining this trip</p>";
        }
           
        ?>
        <form action="index.php" method="post">
            <input type="text" name="name" id="name" placeholder="Enter Your Name">
            <input type="text" name="age" id="age" placeholder="Enter Your Age">
            <input type="text" name="gender" id="gender" placeholder="Enter Your Sex">
            <input type="email" name="email" id="email" placeholder="Enter Your Email">
            <input type="number" name="phone" id="phone" placeholder="Enter Your Phone Number">
            <textarea name="desc" id="desc"  placeholder="Enter Description"></textarea>
            <button type="submit" class="btn">Submit</button>
            <button type="reset" class="btn">Reset</button>
        </form>
    </div>
    <script src="script.js"></script>
</body>
</html>



