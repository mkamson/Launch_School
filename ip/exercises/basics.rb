# The Basics
# 1
fname = 'Mobolaji' 
lname = 'Kamson'

full_name = "#{fname}" + " " + "#{lname}"

puts '1.'
puts  "My name is #{full_name}"
puts " "
#2
digit = 1234

thousand_digit = digit / 1000
hundreds_digit = digit % 1000 / 100
tens_digit = digit % 100 / 10
ones_digit = digit % 10

puts '2.'
puts "Thousands = #{thousand_digit}"
puts "Hundreds = #{hundreds_digit}"
puts "Tens = #{tens_digit}"
puts "Ones = #{ones_digit}"

#3
# I checked in google for how to print hash values
m = {:sahara => 2005,
:iron_man2 => 2010,
:inside_out => 2015, 
:waterworld => 1995, 
:up => 2009}

puts " "
puts '3.'
puts "#{m[:sahara]}"
puts "#{m[:iron_man2]}"
puts "#{m[:inside_out]}"
puts "#{m[:waterworld]}"
puts "#{m[:up]}"

#4
puts " "
puts '4.'
dates = [2005, 2010, 2015, 1995, 2009]

puts dates

#5
puts " "
puts '5.'

fact_5 = 5 * 4 * 3 * 2 * 1
fact_6 = 6 * fact_5
fact_7 = 7 * fact_6
fact_8 = 8 * fact_7

factorials = ["factorial of 5 =  #{fact_5}", "factorial of 6 =  #{fact_6}","factorial of 7 =  #{fact_7}" , "factorial of 8 =  #{fact_8}"]

puts factorials

#6
puts " "
puts '6.'

height_cm = 1.91
weight_kg = 102.1
bmi = 28.1

def cube (n)
  puts n ** 3
end

cube (height_cm)
cube (weight_kg)
cube (bmi)

#7
puts " "
puts '7.'

puts "The error is saying that the correct character to use is '}' and not the ')'
this is a syntax error"
# The error is saying that the correct character to use is '}' and not the ')'
# this is a syntax error.

