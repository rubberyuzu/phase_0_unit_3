# U3.W8-9: Numbers to English Words


# I worked on this challenge by myself.

# 2. Pseudocode
# define a method called "in_words" which takes one variable (number)



# 3. Initial Solution

def one_digit(number)
    if number == 1
      "one"
    elsif number == 2
      "two"
    elsif number == 3
      "three"
    elsif number == 4
      "four"
    elsif number == 5
      "five"
    elsif number == 6
      "six"
    elsif number == 7
      "seven"
    elsif number == 8
      "eight"
    elsif number == 9
      "nine"
    else
      ""
    end
end

def in_words(number)
  if number.to_s.length == 1
    one_digit(number)
  else 
    if number.to_s.split(//).first == "1"
      if number ==11
        "eleven"
      elsif number ==12
          "twelve"
      elsif number ==13
        "thirteen"
      elsif number ==14
        "fourteen"
      elsif number ==15
        "fifteen"
      elsif number ==16
        "sixteen"
      elsif number ==17
        "seventeen"
      elsif number ==18
        "eighteen"
      else 
        "nineteen"
      end
    elsif number.to_s.split(//).first == "2"
      "twenty"+one_digit(number.to_s.split(//).last.to_i)
    elsif number.to_s.split(//).first == "3"
      "thirty"+one_digit(number.to_s.split(//).last.to_i)
    elsif number.to_s.split(//).first == "4"
      "forty"+one_digit(number.to_s.split(//).last.to_i)
    elsif number.to_s.split(//).first == "5"
      "fifty"+one_digit(number.to_s.split(//).last.to_i)
    elsif number.to_s.split(//).first == "6"
      "sixty"+one_digit(number.to_s.split(//).last.to_i)
    elsif number.to_s.split(//).first == "7"
      "seventy"+one_digit(number.to_s.split(//).last.to_i)
    elsif number.to_s.split(//).first == "8"
      "eighty"+one_digit(number.to_s.split(//).last.to_i)
    else
      "ninty"+one_digit(number.to_s.split(//).last.to_i)
    end
  end
end

        
        
        
        
        
        
        
        
    




# 4. Refactored Solution


def one_digit(number)
    if number == 1
      "one"
    elsif number == 2
      "two"
    elsif number == 3
      "three"
    elsif number == 4
      "four"
    elsif number == 5
      "five"
    elsif number == 6
      "six"
    elsif number == 7
      "seven"
    elsif number == 8
      "eight"
    elsif number == 9
      "nine"
    else
      ""
    end
end

def in_words(number)
  if number.to_s.length == 1
    one_digit(number)
  else 
    if number.to_s.split(//).first == "1"
      if number ==11
        "eleven"
      elsif number ==12
          "twelve"
      elsif number ==13
        "thirteen"
      elsif number ==14
        "fourteen"
      elsif number ==15
        "fifteen"
      elsif number ==16
        "sixteen"
      elsif number ==17
        "seventeen"
      elsif number ==18
        "eighteen"
      else 
        "nineteen"
      end
    elsif number.to_s.split(//).first == "2"
      "twenty"+one_digit(number.to_s.split(//).last.to_i)
    elsif number.to_s.split(//).first == "3"
      "thirty"+one_digit(number.to_s.split(//).last.to_i)
    elsif number.to_s.split(//).first == "4"
      "forty"+one_digit(number.to_s.split(//).last.to_i)
    elsif number.to_s.split(//).first == "5"
      "fifty"+one_digit(number.to_s.split(//).last.to_i)
    elsif number.to_s.split(//).first == "6"
      "sixty"+one_digit(number.to_s.split(//).last.to_i)
    elsif number.to_s.split(//).first == "7"
      "seventy"+one_digit(number.to_s.split(//).last.to_i)
    elsif number.to_s.split(//).first == "8"
      "eighty"+one_digit(number.to_s.split(//).last.to_i)
    else
      "ninty"+one_digit(number.to_s.split(//).last.to_i)
    end
  end
end




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE






# 5. Reflection 