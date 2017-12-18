angular.module ("myapp")
.controller ("mapping_controller", function ($scope, $http){
	$scope.insertData = function(){
		$http.post(	"insert.php", {
			'f2_segment':$scope.f2_segment, 
			'field':$scope.f2field, 
			'segment':$scope.h2segment,
			'field':$scope.h2field
			}).success(function(data){
				alert(data);
				$scope.f2_segment =null;
				$scope.field =null;
				$scope.segment =null;
				$scope.field =null;
			});
	}
});
