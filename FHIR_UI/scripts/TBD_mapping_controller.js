 angular.module("myapp")
 .controller("f_usercontroller", function($scope, $http){  
      $scope.btnName = "ADD";
//============================= LOAD FHIR data============================
      $scope.loadFhirMappings = function(){  
           $http.get("load_fhirMappings.php")  
           .success(function(data){
                $scope.list_mapping_names = data;  
           }); 
           $scope.showFlag = "showChoose";
      };

      $scope.loadFhirProfiles = function(){  
                 $http.get("load_fhirProfiles.php")  
                 .success(function(data){
                      $scope.list_profiles = data;  
                 }); 
            };

      $scope.loadFhirFields = function(){  
           $http.post("load_fhirFields.php", {'profile_name':$scope.fhir_profile})  
           .success(function(data){

                $scope.list_fields = data;  
           });  
      };
//========================================= Load HL7 Data ==========================================================

      $scope.loadHL7Segments = function(){  
           $http.get("load_HL7segments.php")  
           .success(function(data){
                $scope.list_hl7segments = data;  
           }); 
      };  
      $scope.loadHL7Fields = function(){  

          if ($scope.hl7_segment == ".CustomSegment") {
              $scope.customField= "newhl7Field"
          }
          else{
            $scope.customField= "oldhl7Field"
          }
          

          $http.post("load_HL7fields.php", {'segment_name':$scope.hl7_segment})  
          .success(function(data){
              $scope.list_hl7fields = data;  
          }); 

      };

// Insert the mappings selected in the selet boxes inthe mappings table, also removes the field values from the select boxes
      $scope.insertData = function(){
        if(($scope.fhir_profile != null) && ($scope.fhir_field != null)){

              if(($scope.customField =="newhl7Field") && ($scope.new_hl7Segment_name != null) && ($scope.new_hl7field_name != null)){

                    // $scope.field_id = $scope.new_field_id;
                    // $scope.hl7_segment = $scope.new_hl7Segment_name;
                    // $scope.hl7_field = $scope.new_hl7field_name;

                    $http.post( "insertHL7.php", {
                    'customField':$scope.customField, 
                    'new_field_id':$scope.new_field_id,
                    'new_hl7Segment_name':$scope.new_hl7Segment_name,
                    'new_hl7field_name':$scope.new_hl7field_name


                    }).success(function(data){                    
                      // $scope.displayData();
                      alert(data);
                      });

                    $http.post( "insert.php", {
                    'fhir_profile':$scope.fhir_profile, 
                    'fhir_field':$scope.fhir_field, 
                    'hl7_segment':$scope.new_hl7Segment_name,
                    'hl7_field':$scope.new_hl7field_name,
                    'mapping_name':$scope.mapping_name,
                    'btnName':$scope.btnName,
                    'mapping_id':$scope.mapping_id

                    }).success(function(data){
                     
                      $scope.fhir_profile =null;
                      $scope.fhir_field =null;
                      $scope.new_hl7Segment_name =null;
                      $scope.new_hl7field_name =null;
                      $scope.btnName = "ADD";
                      
                      alert(data);
                      });
                    $scope.customField =="oldhl7Field"
                    $scope.displayData();

                  }
              else if(($scope.customField !="newhl7Field")){
                $http.post( "insert.php", {
                'fhir_profile':$scope.fhir_profile, 
                'fhir_field':$scope.fhir_field, 
                'hl7_segment':$scope.hl7_segment,
                'hl7_field':$scope.hl7_field,
                'mapping_name':$scope.mapping_name,
                'btnName':$scope.btnName,
                'mapping_id':$scope.mapping_id
                }).success(function(data){
                 
                  $scope.fhir_profile =null;
                  $scope.fhir_field =null;
                  $scope.hl7_segment =null;
                  $scope.hl7_field =null;
                  $scope.btnName = "ADD";
                  // $scope.displayData();
                  alert(data);
                  });
                  $scope.displayData();
              }
              else{
                alert ( "Custom segment/fields can not be blank")
                }
        }
        else{
          alert ( "Fhir Profile/field can not be blank")
        }
        $scope.loadHL7Segments();
        $scope.displayData();
      }; 

//================================================================================================================
      
      $scope.showForm = function(){ 
           if ($scope.mapping_name != null) {       
           $scope.showFlag = "showForm";
           $scope.displayData();
         }else {
          alert ("Choose a mapping");
         }
      };

      $scope.createForm = function(new_mapping_name){ 
           if ($scope.new_mapping_name != null) {   
           $scope.mapping_name=$scope.new_mapping_name;    
           $scope.showFlag = "showForm";
           $scope.displayData();
         }else {
          alert ("Choose a mapping");
         }
      };

      $scope.displayData  = function(){  
           $http.post("mappingDisplay.php", {'mapping_name':$scope.mapping_name})  
           .success(function(data){
                $scope.list_mappings = data;  
           });
     };

     $scope.cancelUpdate  = function(){  
            $scope.fhir_profile =null;
            $scope.fhir_field =null;
            $scope.hl7_segment =null;
            $scope.hl7_field =null;
            $scope.btnName = "ADD";
            $scope.displayData();
     };

     $scope.reselectMapping  = function(){  
            $scope.fhir_profile =null;
            $scope.fhir_field =null;
            $scope.hl7_segment =null;
            $scope.hl7_field =null;
            $scope.mapping_name =null;
            $scope.new_mapping_name = null;
            $scope.showFlag = "showChoose";
            $scope.btnName = "ADD";
            $scope.loadFhirMappings();
            //$scope.displayData();
     };

//============= Loads the data back into the select boxes when Edit button is clicked ================
     $scope.updateData  = function(mapping_id, profile_name, path_name, segment_name, field_name){  

            $scope.mapping_id = mapping_id;
            $scope.fhir_profile = profile_name;
            $scope.fhir_field = path_name;
            $scope.hl7_segment = segment_name;
            $scope.hl7_field = field_name;
            $scope.btnName = "Update";
           // alert ("change is for : ");
            $scope.displayData();
            //$scope.f_loadSegment();
            $scope.loadFhirFields();
            //$scope.loadHL7Segment();
            $scope.loadHL7Fields();
    };

//=================== Deletes the row mapping from table mappings ==========================================
         $scope.deleteData  = function(mapping_id){  
            if(confirm("Are you sure you want to delete this field mapping?"))  
           {  
                $http.post("delete.php", {'mapping_id':mapping_id})  
                .success(function(data){  
                     alert(data);  
                     $scope.displayData();  
                });  
           }  
           else  
           {  
                return false;  
           }
   

    };




  });