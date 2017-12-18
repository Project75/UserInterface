 <?php  
 //delete.php  
 $connect = mysqli_connect("localhost", "root", "", "mydb1");  
 $data = json_decode(file_get_contents("php://input"));  
 if(count($data) > 0)  
 {  
      $mapping_id = $data->mapping_id;  
      $query = "DELETE FROM mappings WHERE mapping_id='$mapping_id'";  
      if(mysqli_query($connect, $query))  
      {  
           echo 'Field mapping deleted';  
      }  
      else  
      {  
           echo 'Error';  
      }  
 }  
 ?> 