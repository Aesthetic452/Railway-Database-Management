<html>
<style>

table

{
    margin-left: auto;
  margin-right: auto; 
  background-color:grey;
border-style:solid;
border-radius:0.5em;
border-width:2px;
align="center";
border-color:black;

font-size:20px;
font-style:bold;
align:CENTER;

}

</style>
<body style=" background-image: url(userlogin.jpg);
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;" >


<br>
<br>
<br>
<br>

<?php 

$conn = mysqli_connect("localhost","root","","dbms");
//require "db.php";

$nm=$_POST["name"];
$sql = "SELECT * FROM employee WHERE ename='".$nm."' ";

// echo $sql;
$query = mysqli_query($conn,$sql) or die(mysql_error());

echo "<table border='1'>
    <tr>
        <th>eid</th>
        <th>ename</th>
        <th>estat</th>
        <th>edesig</th>
        <th>edoj</th>
        <th>esal</th>
    </tr>";
while($row = mysqli_fetch_array($query)) 
{
    echo '
        <tr>
            <td>'.$row['eid'].'</td>
            <td>'.$row['ename'].'</td>
            <td>'.$row['estat'].'</td>
            <td>'.$row['edesig'].'</td>
            <td>'.$row['edoj'].'</td>
            <td>'.$row['esal'].'</td>
        </tr>';
    //echo "  <tr><td>".$row["eid"]."  </td><td>".$row["ename"]."  </td><td>".$row["estat"]."  </td><td>".$row["edesig"]."  </td><td>".$row["edoj"]."  </td><td>".$row["esal"]."  </td><td>";
} 

echo '
</table>';
?>
<br>
<br>
<?php
if(mysqli_num_rows($query)==0)
{
 echo "Error:" . $conn->error. "<br> <center><a href=employee_info.html>Retry!!!</a> ";
}
else{
    echo "<center><a href=employee_info.html>Go Back</a> ";
}

$conn->close(); 
?>

</body>
</html>
