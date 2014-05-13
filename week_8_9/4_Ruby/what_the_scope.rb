# U3.W8-9: What the Scope


# I worked on this challenge Yuzu Saijo, Sebastian Belmar.

# 1. What are the problems in the error messages?
# NameError: uninitialized class variable @@var_2 in Person


# 2. Original Code

# $var_1 = 22
 
# class Person
#   @@var_2 = "Im a class variable"
#   VAR_6 = "Ruby"
 
#   attr_reader :var_3, :var_4
 
#   def initialize(var_5 = VAR_6)
#     @var_3="Law of Demeter"  
#   end
 
#   def do_stuff(var_7=[1,2,3])
#     var_7.each do |var_8|
#       var_9 += var_8 + 2
#     end
#   end
# end


# 3. Modified Code (with scope identified as comments)

$var_1 = 22 #this is a global variable for the scope of the whole file
 
class Person
  @@var_2 = "Im a class variable" #this is a class variable for the scope of the class Persono
  VAR_6 = "Ruby" #this is a constant variable for the scope of class Person
 
  attr_reader :var_3, :var_4, :var_5  #initialize var_2 as a reader variable, these are instance variables for the scope of class Person
 
  def initialize(var_5 = VAR_6) #local variable for the scope of the method that's equal to the constant variable
    @var_3 = "Law of Demeter" # instance variable for the scope of the class Person
    @var_5 = var_5
  end

  def self.var_2 #method to read this Class variable from outside
    @@var_2
  end
 
  def do_stuff(var_7=[1,2,3])#local variable  for the scope of the method do_stuff
    var_9 = 0 #define var_9 as a local variable for the scope of the method do_stuff
    var_7.each do |var_8| #var_8 might be a local variable to each method 
      var_9 += var_8 + 2
    end
    return var_9 # return the value of var_9
  end 
end



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def assert
    raise "Assertion Failed!" unless yield
end

assertiontest = Person.new

assert{$var_1 == 22}
assert{Person.var_2  == "Im a class variable"}
assert{assertiontest.var_3  == "Law of Demeter"}
assert{assertiontest.var_5 == "Ruby"}
assert{assertiontest.do_stuff == 12}
assert{assertiontest.do_stuff([2,3,4,5,6]) == 30}

# 5. Reflection 
# This challenge was more of a review for me.
# I realized I did not really understand the definitions of each variable,
# so it was a good opportunity to learn :)
