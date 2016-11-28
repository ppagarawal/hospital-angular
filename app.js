(function(){
	var patient= {name :'Prateek', age: 26};
	
	var app = angular.module('hospital',[]);
	app.controller ('HospitalController', function(){
	this.product = patient;});
	})();
	