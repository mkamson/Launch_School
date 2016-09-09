# more_stuff.rb

# 1
puts " "
puts "1."
def has_lab?(string)
  if string =~ /lab/
    puts string
  else
    puts "No match found"
  end
end

words = ['laboratory', 'experiment', 'Pans Labyrinth', 'elaborate', 'polar bear']

words.each{ |word| has_lab?(word)}

# 2
puts " "
puts "2."

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

puts " Nothing is printed, #<Proc:0x00000000d89dc0@ is returned"

# 3
puts " "
puts "3."
puts "Exceptional handling is a way to anticipate potential errors and telling the program what to do if such a situation arises to allow the rest of the program to continue to run"

# 4
puts " "
puts "4."

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# 5
puts " "
puts "5."

puts "There is no ampersand (&) in front of the block parameter for the execute method"