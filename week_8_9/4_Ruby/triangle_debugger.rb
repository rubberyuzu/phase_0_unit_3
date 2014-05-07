# U3.W8-9: Triangle Debugger


# I worked on this challenge [by myself, with: Eoin.

# 1. Original Solution

# def valid_triangle?(a, b, c)
#     sum = 0
  
#   if a > 0 && b > 0 && c > 0
    
#     if a >= b
#         largest = a
#         sum += b
#     else largest = b
#         sum += a
#     end
    
#     if c > largest
#         sum += largest
#         largest = c
#     else sum += c
#     end
  
#     if sum > largest
#         return true
#     else return false
#     end
   
#   else return false 
#   end
  
# end


# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error?
# rspec ./triangle_spec.rb:8 # valid_triangle? expects 3 arguments

# 1) valid_triangle? expects 3 arguments
#      Failure/Error: method(:valid_triangle?).arity.should eq 3

#       expected: 3
#             got: 4

#       (compared using ==)
     # ./triangle_spec.rb:9:in `block (2 levels) in <top (required)>'

# * what is the exact line number the error is appearing?
    #Line 8
# * before you fix the bug, what do you think is causing the error?
    #wrong number of arguments in the definition of the method (needs to be 3, based on tests).
    # --> solution involved moving sum out of the method arguments, and defining it as a variable inside the method

# --- Bug 3 ---
# rspec ./triangle_spec.rb:17 # valid_triangle? returns false if any of the arguments are 0

# * what is the exact description of the error?
    #oops, we didn't save the error message
# * what is the exact line number the error is appearing?
    #line 17 in the rpec tests
# * before you fix the bug, what do you think is causing the error?
    #tests are expecting a return of "false", but are getting "true" instead.
    # ---> solution: was actually that we were returning "false" instead of false (the quotations turned our response into a string)


# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a, b, c)
  
  if a > 0 && b > 0 && c > 0
    largest = [a,b,c].max
    sum = a+b+c - largest
    
    if sum >largest
     return true
    end
  end
  
end

# 5. Reflection
# I think our Refactored solution is much better than the original one.
# It was fun working with Eoin and I could both navigate and drive, which was a good experience.