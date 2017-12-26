<?php  
 //loads HL7 fileds into the drop down menu  
include 'dbutils.php';
 $data = json_decode(file_get_contents("php://input"));  
 $query = "SELECT * FROM hl7_fields WHERE segment_name='".$data->segment_name."' ORDER BY field_name ASC";  
load_json_from_db($query);
 // $connect = mysqli_connect("localhost", "root", "", "mydb1");  
 // $output = array();  

 // $result = mysqli_query($connect, $query);  
 // while($row = mysqli_fetch_array($result))  
 // {  
 //      $output[] = $row;  
 // }  
 // echo json_encode($output);  
 ?>  