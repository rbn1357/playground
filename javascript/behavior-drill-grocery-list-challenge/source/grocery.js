$(document).ready(function(){
  controller = new SingleListApp.Controller();
  controller.bind();
  list = new SingleListApp.GroceryList
  view = new SingleListApp.View('#grocery_list', '#total_cost');
});

SingleListApp = {};

//Controller
//////////////////////////////
 
SingleListApp.Controller = function(){

};

SingleListApp.Controller.prototype = {
  bind: function(){bindNbuild()},
  updateList: function(ui){
    var node = ui.draggable[0].cloneNode(true);
    item = new SingleListApp.Item(this.parseNode(node));
    list.updateList(item);
    view.renderGroceryItem(item);
    view.renderGroceryTotal(list.total);
  },
  parseNode: function(node) {
    return {item_name : node.children[0].innerHTML,
    item_price : parseFloat(node.children[1].innerHTML)};
  }
};

//View
//////////////////////////////

SingleListApp.View = function(groceryListDiv, groceryListTotal ){
  this.groceryListDiv = groceryListDiv;
  this.groceryListTotal = groceryListTotal;
};

SingleListApp.View.prototype = {
  renderGroceryItem: function(item){
    var itemToHTML = "<tr class='item'> <td class='item_name'>" + item.name
     + "</td> <td class='item_price'>" + item.price + "</td> </tr>"

    $(this.groceryListDiv).append(itemToHTML)
  },
  renderGroceryTotal: function(listTotal){
    $(this.groceryListTotal).html(listTotal)
  }
};

/////////////
// Put this somewhere else. Out of place.
bindNbuild = function(){
  $(".item").draggable({helper: 'clone'});
  $("#grocery_list").droppable({ 
    drop: function(event, ui) {
      controller.updateList(ui);
  }});
};

//Models
//////////////////////////////

SingleListApp.Item = function(node){
  this.name = node.item_name;
  this.price = node.item_price;
};

SingleListApp.GroceryList = function(){
  this.GroceryList = []
  this.total = 0;
};

SingleListApp.GroceryList.prototype = {
  updateList: function(item) {
    this.GroceryList.push(item)
    this.updateListTotal(item.price);
  },
  updateListTotal: function(newItemPrice){
    // this.total += newItemPrice
    this.total = Math.round((this.total + newItemPrice)*100)/100
  }
};