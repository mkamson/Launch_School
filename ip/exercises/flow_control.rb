# Flow Control
# 1
#1. false
#2. false
#3. false
#4. true
#5. true

# 2

puts "please type in a string of text"

def caps(text) 
  
puts text.length  > 10 ? text.upcase : text
 
end

caps(gets.chomp)

# 3

puts "please type in any number from 0 to 100"

def int(num)
  
  if (0..50).include? num 
    puts "#{num} is between 0 and 50"
    
  elsif (51..100).include? num 
    puts "#{num} is between 51 and 100"
    
  else
    puts "#{num} is greater than 100"
    
  end
  
end
  
int(gets.chomp.to_i)

# 4

#1. "FALSE"
#2. "Did you get it right?"
#3. "Alright now!"


# 5

puts "please type in any number from 0 to 100"
number = gets.chomp.to_i

case number

when number.between?(0, 50)
  puts "#{number} is between 0 and 50"
  
when number.between?(51, 100)
    puts "#{number} is between 51 and 100"
else
   puts "#{number} is greater than 100"
end
 

# 6

# There is a missing end, I would just ad an end to finish the if statement
