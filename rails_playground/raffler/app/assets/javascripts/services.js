var app = angular.module('rafflerService', ['ngResource']);

app.factory('Entry', ['$resource', function($resource){
  return $resource("/entries/:id.json", {id: "@id"}, {update: {method: "PUT"}});
}]);