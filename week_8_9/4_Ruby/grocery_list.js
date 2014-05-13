var groceryList ={
  addItem: function(item, number)
  {
    for (var i = 0; i < itemArray.length; i++)
    {
      itemArray.push(item);
      return numberOfItems.push(number);
    }
  },
  amountOfGroceries: function() 
  {
  return console.log("There are " + itemArray.length + " groceries in the list.")
  },

  groceryCount: function(item)
  {
    var i = itemArray.indexOf(item)
    return console.log(numberOfItems[i])
  },

  removeItem: function(item)
  {
    var i = itemArray.indexOf(item)
    itemArray.splice(i, 1)
    numberOfItems.splice(i, 1)
  },

  viewGroceryList: function()
  {
    for (var i = 0; i < itemArray.length; i++)
    {
      console.log(itemArray[i])
      console.log(numberOfItems[i])
    }
  }

};





