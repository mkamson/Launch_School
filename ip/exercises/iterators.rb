# Loop & Iterators

# 1
puts "It returns the variable it was called on which is the array contained in x, => [1, 2, 3, 4, 5]"

# 2

puts 'Please enter the MAGIC word'
user_input = gets.chomp
while user_input != 'STOP'
puts 'Sorry try again'
user_input = gets.chomp
end
puts 'You did it !'

# 3

 x = ['dog', 'goat', 'ram', 'pig', 'buffalo', 'chicken']
 x.each_with_index{ |item, index| puts "#{index.to_i + 1}. #{item}" }
 
 # 4
 
 def countdown(number)
  puts number
  if number > 0
   countdown(number - 1)
  end
end

countdown(25)
 
 
 