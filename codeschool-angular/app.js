(function() {
  var app = angular.module('store', []);

  app.controller('StoreController', function(){
    this.products = gems;
  });

  var gems = [
    {
        name: 'Dodecahedron',
        price: 2.9,
        description: 'Coolest Gem Evar',
        canPurchase: false,
        soldOut: true,
        images: [
          {
          full: 'ruby-gem.png'
          }
        ]
    },
    {
        name: 'Ryan\'s Gem',
        price: 102.95,
        description: '1st Coolest Gem Evar',
        canPurchase: true,
        soldOut: false
    }
  ]; 

})();