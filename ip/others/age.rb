#Variables
# 2
puts "what is your name ?"
name =gets.chomp

puts "How old are you ?"
a = gets.chomp
age = a.to_i

age_in_10 = age + 10
age_in_20 = age + 20
age_in_30 = age + 30
age_in_40 = age + 40

puts "In 10 years you will be:"
puts age_in_10
puts "In 20 years you will be:"
puts age_in_20
puts "In 30 years you will be:"
puts age_in_30
puts "In 40 years you will be:"
puts age_in_40

10.times { puts name }