#Variables
# 5

x = 0
3.times do
  x += 1
end
puts x

put "The first one prints 3 to the screen. The second one gives an error because it assume x is not defined as it cant access the x assignment to y in the block "

=begin
y = 0
3.times do
  y += 1
  x = y
end
puts x
=end

# 6

# Its looking for variable or method 'shoes' but it has not been defined