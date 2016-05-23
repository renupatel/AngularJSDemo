/**
 * 
 */
var myApp = angular.module("myApp",[]);

myApp.controller("regController",function($scope){
	
	var employee = {
			firstName:"Renuka",
			lastName:"Mehta",
			gender:"female"
			
	};
	
	var jewellery = {
			Name:"necklace",
			image:"images/20160104_124047.jpg"
			
			
	}
	var message= "test";
	$scope.employee= employee;
	$scope.jewellery= jewellery;
	$scope.message = message;
});
var myApp2 = angular.module("myApp2",[]).controller("regController2",function($scope){
	var employees = [
			
			{firstName:"Renuka", lastName:"Mehta", gender:"female"},	
			{firstName:"Himani", lastName:"Patel", gender:"female"},
			{firstName:"Keyur", lastName:"Patel", gender:"male"},
			{firstName:"Rani", lastName:"Beerum", gender:"male"}
	]
	
	$scope.employees = employees;
});