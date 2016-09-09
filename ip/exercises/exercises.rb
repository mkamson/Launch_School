# exercises.rb

#1
puts"No 1."


arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |number| puts number }
puts " "
puts"No 2."


arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr_5 = arr.each{ |number| puts number if number > 5 }


puts " "
puts"No 3."

arr_odd = arr_5.select { |number| number % 2 > 0}
puts arr_odd

puts " "
puts"No 4."

puts arr.unshift(0) << 11

puts " "
puts"No 5."

arr.delete(11) 
arr << 3

puts arr

puts " "
puts"No 6."


dup_arr = [1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 7, 8, 9, 10]
puts "Array with duplicate elements = #{dup_arr}"

undup_arr = dup_arr.uniq

puts "Array with duplicate elements removed = #{undup_arr}"

puts " "
puts"No 7."

puts "A hash is a data structure that stores items as key-value pairs, while arrays, store items by an ordered index."


puts " "
puts"No 8."

hash  = {:name => 'bolaji', :height => '190 cm', :age => '38 yrs'}

alt_hash = {name: 'bolaji', height: '190 cm', age: '38 yrs'}

puts "Old_hash  = {:name => 'bolaji', :height => '190 cm', :age => '38 yrs'}"
puts "Old Hash is #{hash}"
puts "New_hash = {name: 'bolaji', height: '190 cm', age: '38 yrs'}"
puts "New Hash is #{alt_hash}"

puts " "
puts"No 9."

h = {a:1, b:2, c:3, d:4}
puts h
puts h[:b]
h[:e] = 5
puts h

h.each { |k, v| h.delete(k) if v < 3.5 }

puts h


puts " "
puts"No 10."

puts "Hash values CAN be arrays and arrays CAN have hashes as elements"

family_height_weight = { bolaji: ['190 cm', '101 kg'], firi: ['160 cm', '65 kg'], yosola: ['70 cm', '16 kg'], tj: ['50 cm', '12 kg'] }
puts "My family's heights and weights are as follows: #{family_height_weight}"

contacts = [{bob: 7256801}, {cle: 7256802}, {joe: 7256803}, {sam: 7256804}]

puts "My friends contacts are as follows #{contacts}"



puts " "
puts"No 11."

puts "I like rubyonrails.org, it has video ! :)"

puts " "
puts"No 12."

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


puts contacts

puts " "
puts"No 13."

puts "Joe's email is #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is #{contacts["Sally Johnson"][:phone]}"


puts " "
puts"No 14."

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
data = [:email, :address, :phone]
contacts.each{ |k, v| data.each{ |d| v[d] = contact_data.shift}}

puts contacts


puts " "
puts"No 15."
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|x| x.start_with?("s") }

puts arr
puts " "
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|x| x.start_with?("s", "w") }

puts arr

puts " "
puts"No 16."

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
b = a.map {|x| x.split(" ")}
b.flatten!
p b


puts " "
puts"No 17."

puts "These hashes are the same!"