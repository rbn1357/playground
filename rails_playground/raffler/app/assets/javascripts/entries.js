var app = angular.module('raffler', ['rafflerService']);

app.controller('RaffleCtrl', ['$scope', 'Entry', function($scope, Entry){
  $scope.entries = Entry.query();

  $scope.addEntry = function(){
    entry = Entry.save($scope.newEntry);
    $scope.entries.push(entry);
    $scope.newEntry = "";
  };

  $scope.drawWinner = function(){
    randomNum = Math.floor(Math.random() * $scope.entries.length)
    entry = $scope.entries[randomNum];
    entry.winner = true;
    entry.$update();
  };
}]);