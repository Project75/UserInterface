<?php  
 //load_HL7segments.php  
 $connect = mysqli_connect("localhost", "root", "", "mydb1");  
 $output = array();  
 // $query = "SELECT * FROM segment ORDER BY segment_name ASC";  
 $query = "SELECT DISTINCT segment_name FROM hl7_fields ORDER BY segment_name ASC"; 
 $result = mysqli_query($connect, $query);  
 if(mysqli_num_rows($result) > 0){
		 while($row = mysqli_fetch_array($result))  
		 {  
		      $output[] = $row;  
		 } 
	echo json_encode($output);  
	}
 ?>