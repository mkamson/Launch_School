# Arrays

# 1

arr = [1, 3, 5, 7, 9, 11] 
puts "Input any Integer"      # I modified my program to check the given array for any integer based on user input :)
number = gets.chomp.to_i

check = arr.include? number
if check == true
  puts "#{number} exists in #{arr}"
else
  puts "#{number} doesn\'t exist in #{arr}"
end

# 2

  # 1. => 1
  
  # 2. => [1, 2, 3]

# 3.  arr.last.first

# 4

  # 1. 3
  
  # 2. syntax error
  
  # 3. 8
  
# 5

  # a. "e"
  # b. "A"
  # c. nil
  
# 6

  # Arrays items are indexed by Integers starting from 0 for the first item. The program is expecting an integer and instead got a string. to fix this use the index for 'margaret' instead i.e names[3] = 'jody' 

# 7

array = [1, 3, 5, 7, 9, 11] 

array_plus_2 = array.map { |e| e + 2}

p array
p array_plus_2

  
