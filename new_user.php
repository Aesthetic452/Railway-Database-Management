<html>
<body style=" background-image: url(userlogin.jpg);
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;" >

<?php 

$conn = mysqli_connect("localhost","root","","dbms");
//require "db.php";

$pwd=$_POST["password"];
$eid=$_POST["emailid"];
$mno=$_POST["mobileno"];
$dob=$_POST["dob"];

$sql = "INSERT INTO user (password,emailid,mobileno,dob) VALUES ('".$pwd."','".$eid."','".$mno."','".$dob."')";
// echo $sql;

if ($conn->query($sql) === TRUE) 
{
 echo "<center>Hi $eid, <a href=index.html> Click here </a> to browse through our website!!! " ;
} 
else 
{
 echo "Error:" . $conn->error. "<br> <a href=\"http://localhost/dbms/new_user.html\">Go Back to Login!!!</a> ";
}

$conn->close(); 
?>

</body>
</html>
