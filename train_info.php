<html>
<style>

table

{
margin-left: auto;
  margin-right: auto; 
  background-color:#ADD8E6;
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

<body style=" background-image: url(train_info.png);
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;" >
<br>
<br>
<br>
<?php 

$conn = mysqli_connect("localhost","root","","dbms");
//require "db.php";

$tno = $_POST["tno"];
$sql = "SELECT *  FROM train  WHERE trainno ='".$tno."' ";
$sql2 = "SELECT trainno,sname,arrival_time,departure_time,distance FROM schedule WHERE trainno='".$tno."' ";
$query = mysqli_query($conn,$sql) or die(mysql_error());
$query2 = mysqli_query($conn,$sql2) or die(mysql_error());

echo "<table border='1'>
    <tr>
        <th>train no.</th>
        <th>train name</th>
        <th>starting station</th>
        <th>starting time</th>
        <th>destination station</th>
        <th>destination time</th>
        <th>day</th>
        <th>distance</th>
    </tr>";
while($row = mysqli_fetch_array($query)) 
{
    echo '
        <tr>
            <td>'.$row['trainno'].'</td>
            <td>'.$row['tname'].'</td>
            <td>'.$row['sp'].'</td>
            <td>'.$row['st'].'</td>
            <td>'.$row['dp'].'</td>
            <td>'.$row['dt'].'</td>
            <td>'.$row['dd'].'</td>
            <td>'.$row['distance'].'</td>
        </tr>';
    //echo "  <tr><td>".$row["eid"]."  </td><td>".$row["ename"]."  </td><td>".$row["estat"]."  </td><td>".$row["edesig"]."  </td><td>".$row["edoj"]."  </td><td>".$row["esal"]."  </td><td>";
} 

echo '
</table>';
?>

<br>
<br> 
<br>
<br>
<?php
echo "<table border='1'>
    <tr>
        <th>train no.</th>
        <th>station name</th>
        <th>arrival_time</th>
        <th>departure_time</th>
        <th>distance</th>
    </tr>";
while($row2 = mysqli_fetch_array($query2)) 
{
    echo '
        <tr>
            <td>'.$row2['trainno'].'</td>
            <td>'.$row2['sname'].'</td>
            <td>'.$row2['arrival_time'].'</td>
            <td>'.$row2['departure_time'].'</td>
            <td>'.$row2['distance'].'</td>
        </tr>';
    //echo "  <tr><td>".$row["eid"]."  </td><td>".$row["ename"]."  </td><td>".$row["estat"]."  </td><td>".$row["edesig"]."  </td><td>".$row["edoj"]."  </td><td>".$row["esal"]."  </td><td>";
} 

echo '
</table>';
?>
<br>
<br>
<?php
if(mysqli_num_rows($query)==0 || mysqli_num_rows($query2)==0)
{
 echo "Error:" . $conn->error. "<br> <a href=\"http://localhost/dbms/train_info.html\">Retry!!!</a> ";
}else{
    echo '<style="color:red;"><font size="30px"><center><a href=train_info.html>Go Back</a> '; 
}


$conn->close(); 
?>

</body>
</html>
