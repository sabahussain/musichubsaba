angular.module('myApp', [])

.controller('ctrl', function($scope) {
 $scope.music = [
    {id: '101', name:'Acoustic Guitar', brand: 'Amaze',description:'A',price:'5000',category:'Guitar'},
    {id: '102', name: 'Musical Violin', brand: 'Aria' ,description:'B',price:'6000',category:'Violin'},
    {id: '103', name: 'Straight Flute', brand: 'BeingDeal',description:'C', price:'7000',category:'Flute'},
  ];
  
});