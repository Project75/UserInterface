<?php  
include 'dbutils.php';
 //List the mappings names from the fhir_field table
$query = "SELECT DISTINCT mapping_name FROM mappings ORDER BY mapping_name ASC";  
load_json_from_db($query);

 // $connect = mysqli_connect("localhost", "root", "", "mydb1");  
 // $output = array();  
 
 // $result = mysqli_query($connect, $query);  
 
 // if(mysqli_num_rows($result) > 0)  
 // {  
 //      while($row = mysqli_fetch_array($result))  
 //      {  
 //           $output[] = $row;  
 //      }  
 //      echo json_encode($output);  
 // }  
 ?>