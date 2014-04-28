# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1.Christopher Aubuchon
# 2.Yuzu Saijo
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add an item to the list 
# As a user, I want to check the contents of the list
# As a user, I want to remove an item / all items
# As a user, I want to check if the list includes the specific item
# As a user, I want to
 
# Pseudocode
# define a class named "grocery list"
# initialize the method and define instance variables
# define an add method which takes one item as a variable
# define a remove method which takes one item as a variable
# define a display method 
# define a remove-all method 
# define an include method which takes one item 
 
 
# Your fabulous code goes here....
class GroceryList
  attr_reader  :list
  def initialize
      @list = []
  end
  
  def add_item(item)
      @list << item
  end
  
  def remove_item(item)
    @list.delete(item)
  end
  
  def display
    #   x = 0
    #   puts "Your list includes "
      
    #   while x < @list.length 
    #     puts ":" + @list[x]
    #     x += 1
    #   end
    
    #   str = ""
    #   @list.inject("") do |result, element|
    #     result << element
    #     result << ", "
    #     str += result
    #   end
    #   puts "Your list includes #{str}"
    #   @list.each do |item|
    #      str+=": #{item} \n"
    #   end
    #   puts "Your list includes #{str}"
      
      puts "Your list includes #{@list.inject{|x,y| x+", "+y}}"
      
  end
  
  
  def remove_all
     @list=[] 
  end
      
  def include?(item)
      if @list.include?(item)
          puts "Your list includes #{item}."
      else
          puts "Your list doesn't include #{item}."
      end
  end
end




Refactored

# DRIVER CODE GOES HERE. 

 
 def assert
     raise "Assertion Failed!" unless yield
 end

 list1 = GroceryList.new 
 
 list1.add_item("milk")
 list1.add_item("butter")
 list1.add_item("coke")
 assert{list1.list.length == 3}
 list1.remove_item("milk")
 assert{list1.list[0]=="butter"}
 list1.display
 list1.include?("butter")
 list1.include?("milk")
 list1.remove_all
 assert{list1.list.length ==0}
 
 