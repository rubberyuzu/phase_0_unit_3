# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode

# define fibonacci sequence ... put the sequence into one array
# then check if the numeber is inside an array, using an include? method.




# 3. Initial Solution

def is_fibonacci?(num)
  arr=[]
  i=0
  while i<1000
  if i <2
  	arr[i] = 1
  else
  	arr[i] = arr[i-1] + arr[i-2]
  end
  i+=1
 end
 if arr.include?(num)
 	return true
 else false
 end
end



# 4. Refactored Solution

def is_fibonacci?(num)
  arr=[]
  i=0

  while i < num
  if i <2
  	arr[i] = 1
  else
  	arr[i] = arr[i-1] + arr[i-2]
  end
  i+=1
 end

 if arr.include?(num)
 	return true
 else false
 end

end





# 1. DRIVER TESTS GO BELOW THIS LINE

p is_fibonacci?(13) == true
p is_fibonacci?(14) == false





# 5. Reflection 

# I did not know what range I should take when I make a fibonacci sequence.
# Other than that it was pretty clear what I should do as I was pretty much familiar with recursion.