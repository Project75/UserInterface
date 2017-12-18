<?php  
 //Load fhir fields fromm table fhir_fields for the selected profile
 $connect = mysqli_connect("localhost", "root", "", "mydb1");  
 $output = array();  
 $data = json_decode(file_get_contents("php://input"));  
 $query = "SELECT field_path FROM fhir_fields WHERE profile_name='".$data->profile_name."' ORDER BY field_path ASC";  
 $result = mysqli_query($connect, $query);  
 while($row = mysqli_fetch_array($result))  
 {  
      $output[] = $row;  
 }  
 echo json_encode($output);  
 ?>  