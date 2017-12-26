<?php  
include 'dbutils.php';
 //Load fhir fields fromm table fhir_fields for the selected profile
$data = json_decode(file_get_contents("php://input"));  
$query = "SELECT field_path FROM fhir_fields WHERE profile_name='".$data->profile_name."' ORDER BY field_path ASC";  

load_json_from_db($query);

 ?>  