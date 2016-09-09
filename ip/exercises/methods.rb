
  # Question 1
  
  def greeting(name)
    puts "Hello #{name}, how are you today?"
  end
  
  puts "Please type your name below ?"
  greeting (gets.chomp)


 
=begin
  # Question 2
 
  1. => 2
  2. => nil
  3. => "Joe"
  4. => "four"
  5. => nil
=end 


  # Question 3
  
  def multiply(a, b)
    
    product = a * b
    
  end  
  
  puts multiply(10,10).to_s + '% ?'
  

 
  # Question 4
  # Nothing is printed due to the return in the method
  
  # Question 5
  
  def scream(words)
  words = words + "!!!!"
  puts words
  end

  scream("Yippeee")
  
  # It prints: "Yippeee!!!!" but still returns nil, puts evaluates to nil
  
  
  
  # Question 6
  # The method was defined with 2 parameters, but when the method was called only one argument was provided.

