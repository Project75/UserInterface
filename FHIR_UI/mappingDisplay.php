<?php  
 //mappingDisplay.php : Displays the data onto the page 
 $connect = mysqli_connect("localhost", "root", "", "mydb1");  
 $output = array(); 
 $data = json_decode(file_get_contents("php://input"));  
 $query = "SELECT * FROM mappings WHERE mapping_name= '".$data->mapping_name."' ORDER BY mapping_id ASC";  
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