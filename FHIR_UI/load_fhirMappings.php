<?php  
 //List the mappings names from the fhir_field table
 $connect = mysqli_connect("localhost", "root", "", "mydb1");  
 $output = array();  
 $query = "SELECT DISTINCT mapping_name FROM mappings ORDER BY mapping_name ASC";  
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