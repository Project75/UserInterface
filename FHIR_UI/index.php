<!DOCTYPE html>  
 <html>  
      <head>  
           <title>FHIR Mapping</title>  
           <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>  
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" /> 
           <link rel="stylesheet" href="css/style.css"> 
      </head>
      <nav >      
        <div align="center">
           <img src="images/logo_fhir-01.jpg" alt="Fhir logo" >   
           <h3 >FHIR - HL7 Mapping</h3>         
        </div>      
    </nav>  

      <body ng-app="myapp" ng-controller="f_usercontroller" ng-init="loadFhirMappings()"  > 
<!-- 1st  screen Login -->
<!-- 2nd screen Choose existing mapping : List the profile names from the fhir_field table -->
        <div ng-show = "showFlag == 'showChoose'" class = "container" style="width:600px";>
          <div class = "input-form">  
            <br/>
            <div class="col-lg-8 col-lg-offset-1">
                <select name="mapping_name" ng-model="mapping_name" class="form-control">  
                  <option value="">Choose from an existing mapping</option>  
                  <option ng-repeat="mapping in list_mapping_names" value="{{mapping.mapping_name}}">{{mapping.mapping_name}}</option>  
                </select> 
            </div>
            <div>
                  <input type="submit" name="btnChoose" class="btn btn-info"  ng-click="showForm()" value="Choose"/>
            </div>
            <br>

           
            <div align = "center">
              <!-- <input type="submit" name="btnChoose" class="btn btn-info"  data-target="#inputCreateModal" data-target = "modal" value="Create"/> -->
              <!-- <button class="btn btn-info"  data-target="#inputCreateModal" data-toggel = "modal">Create</button> -->
              <!-- <input type="submit" name="btnChoose" class="btn btn-info"  ng-click="showForm()" value="Create"/> -->
              <button class="btn btn-success" ng-click="">Create a new mapping</button>
            </div>
            <br>
          </div>
        </div>
<!-- 2nd screen Ends -->
<!-- 3rd screen starts: Main mapping/editing window -->

          <div class="container" style="width:1200px;" ng-show = "showFlag == 'showForm'"  ng-init="displayData();loadFhirProfiles();">  
              <div class = "entry-form">  
                <br />  
                <!--3a. Add/ Edit section of the mappings -->

                <!-- Select FHIR profile and Fhir Field path -->
                <div  class="col-lg-6 input-form" >
                      <div class="input-form" style="height: 50px";>   
                          <div class="col-lg-4"> 
                          <select name="fhir_profile" ng-model="fhir_profile" class="form-control" ng-change="loadFhirFields()">  
                            <option value="">Select Profile</option>  
                            <option ng-repeat="profile in list_profiles" value="{{profile.profile_name}}">{{profile.profile_name}}</option>  
                          </select> 
                          </div>
                          <div class="col-lg-8">                      
                               <select name="fhir_field" ng-model="fhir_field" class="form-control">  
                                    <option value="">Select Fhir Field</option>  
                                    <option ng-repeat="path in list_fields" value="{{path.field_path}}">  
                                         {{path.field_path}}  
                                    </option>  
                               </select>  
                          </div>
                      </div>
                  
                </div>
                <!-- Select HL7 Segment and HL7 Field name -->
                <div class="col-lg-6 input-form " ng-init="loadHL7Segments()" >
                  <div class="input-form" style="height: 50px";> 
                  <div class="col-lg-4" >  
                       <select name="hl7_segment" ng-model="hl7_segment" class="form-control" ng-change="loadHL7Fields()">  
                            <option value="">Select Segment</option>  
                            <option ng-repeat="hl7segment in list_hl7segments" value="{{hl7segment.segment_name}}">{{hl7segment.segment_name}}</option>  
                       </select>  
                  </div>
                  <div class="col-lg-8">                      
                       <select name="hl7_field" ng-model="hl7_field" class="form-control">  
                            <option value="">Select Field</option>  
                            <option ng-repeat="hl7field in list_hl7fields" value="{{hl7field.field_name}}">{{hl7field.field_name}} </option>  
                       </select>  
                  </div>
                </div>
                </div>
                <!-- <input type="hidden" ng-model="mapping_id" /> -->
                <br>
                
                <!-- ADD, Update and Cancel buttons -->
                <div class = "container">
                  <div class = "btn-form col-lg-4">
                    <br>
                    <input type="submit" name="btnInsert" class="btn btn-info"  ng-click="insertData()" value="{{btnName}}"/>
                    <input type="submit" ng-show ="btnName == 'Update'" name="cancel" class="btn btn-info"  ng-click="cancelUpdate()" value="Cancel"/>
                  </div>
                  <div class="select-right"><br><br>
                    <button type="button" ng-click="reselectMapping()" class="btn btn-info">ReSelect Mapping <span class="badge">{{mapping_name}}</span></button>
                  </div> 
                </div>                
              </div>
              
              <!-- Displays the list of mappings for a particular mapping_name -->
              <table class="table">  
                <tr>  
                     <th>Mapping_id</th>  
                     <th>Profile</th>  
                     <th>FHIR Field</th>
                     <th>HL7 Segment</th>  
                     <th>HL7 Field</th>
                     <th>Mapping Name</th>
                     <th>Update</th>  
                     <th>Delete</th>  
                </tr>  
                <tr ng-repeat="map in list_mappings"> 
                    <td>{{map.mapping_id}}</td> 
                    <td>{{map.profile_name}}</td> 
                     <td>{{map.field_path}}</td>  
                     <td>{{map.segment_name}}</td>
                     <td>{{map.field_name}}</td> 
                     <td>{{map.mapping_name}}</td> 
                       
                      
                     <td><button ng-click="updateData (map.mapping_id, map.profile_name, map.field_path, map.segment_name, map.field_name, map.mapping_name)" class="btn btn-warning btn-xs">Edit</button></td>  
                     <td><button ng-click="deleteData(map.mapping_id)" class="btn btn-danger btn-xs">Delete</button></td> 
                     
                </tr>  
              </table>  
                
            </div>  
      </body>  
 </html>  
<script src="app.js"></script>
<script src="scripts/f_usercontroller.js"></script> 
<!-- <script src="scripts/h_usercontroller.js"></script> 
//<script src="scripts/mapping_controller.js"></script> 
-->