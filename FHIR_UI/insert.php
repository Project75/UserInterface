 <?php  
 //insert.php  
 $connect = mysqli_connect("localhost", "root", "", "mydb1");  
 $data = json_decode(file_get_contents("php://input"));  
 if(count($data) > 0)  
 {  
    if (!empty($data->fhir_profile) and !empty($data->fhir_field) and !empty($data->hl7_segment) and !empty($data->hl7_field)){

      $fhir_profile = mysqli_real_escape_string($connect, $data->fhir_profile);       
      $fhir_field = mysqli_real_escape_string($connect, $data->fhir_field);       
      $hl7_segment = mysqli_real_escape_string($connect, $data->hl7_segment);       
      $hl7_field = mysqli_real_escape_string($connect, $data->hl7_field);
      $mapping_name = mysqli_real_escape_string($connect, $data->mapping_name);
      $btn_name = $data->btnName;  
      // $mapping_id = $data->mapping_id;
      
      if($btn_name == "ADD"){

            $query = "INSERT INTO mappings (profile_name, field_path, segment_name, field_name, mapping_name) VALUES ('$fhir_profile', '$fhir_field', '$hl7_segment', '$hl7_field', '$mapping_name')"; 
                  
                  $result = mysqli_query($connect, $query);
                  if($result > 0){          
                    echo "Field mapping Inserted..."; 
                  }
                  else{
                    echo "ERROR In inserting";
                  }

      }
      if($btn_name == "Update"){   
            $mapping_id = $data->mapping_id;     
            $query = "UPDATE mappings SET profile_name = '$fhir_profile', field_path = '$fhir_field', segment_name = '$hl7_segment', field_name = '$hl7_field' WHERE mapping_id = '$mapping_id'";
            

                  $result = mysqli_query($connect, $query);
                  if($result > 0){          
                    echo "Field mapping updated..."; 
                  }
                  else{
                    echo "ERROR in Update";
                  }
      }
    }
    else{
      echo 'Field value cannot be blank';
    }

 }  
 ?>  