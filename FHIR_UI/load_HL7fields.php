<?php  
 //load_state.php  
 $connect = mysqli_connect("localhost", "root", "", "mydb1");  
 $output = array();  
 $data = json_decode(file_get_contents("php://input"));  
 $query = "SELECT * FROM field WHERE segment_name='".$data->segment_name."' ORDER BY field_name ASC";  
 $result = mysqli_query($connect, $query);  
 while($row = mysqli_fetch_array($result))  
 {  
      $output[] = $row;  
 }  
 echo json_encode($output);  
 ?>  