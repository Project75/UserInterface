<?php  
 //List the profile names from the fhir_field table
 $connect = mysqli_connect("localhost", "root", "", "mydb1");  
 $output = array();  
 $query = "SELECT DISTINCT profile_name FROM fhir_fields ORDER BY profile_name ASC";  
 $result = mysqli_query($connect, $query);  
 if(mysqli_num_rows($result) > 0)  
 {  
      while($row = mysqli_fetch_array($result))  
      {  
           $output[] = $row;  
      }  
      echo json_encode($output);  
 }  
 ?>