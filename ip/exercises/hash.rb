# Hashes

family = {  uncles: ['bob', 'joe', "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          
          
          
im_fam = family.select { |k, v| (k == :brothers) || (k == :sisters) }

immediate_family = im_fam.values.flatten
puts "1."
p immediate_family
puts " "


# the merge! method merges hash 1 with hash 2 and assigns the new hash to hash 1
# the merge method does not assign the new hash to hash 1
puts "2."
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
y = h1.merge(h2)
puts "For merge method called on #{h1} and #{h2}"
puts "First Hash is still #{h1}"
puts "Merged Hash is #{y}"

h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
x = h1.merge!(h2)
puts "For merge! method called on #{h1} and #{h2}"
puts "First Hash is now #{h1}"
puts "Merged Hash is #{x}"

puts " "
puts "3."

name_and_age = { bolaji: 38, bisola: 35, bukola: 34, bolarinwa: 27 }
name_and_age.keys.each { |k| puts k.capitalize }
name_and_age.values.each { |v| puts v }
name_and_age.each { |k, v| puts "#{k.capitalize} is #{v} years old" }

puts " "
puts "4."

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person[:name]

puts " "
puts "5."

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person.has_key?('Bob')
p person.has_key?('Bolaji')
p person.has_key?(:name)

puts " "
puts "6."
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
  
  end

result.each do |k, v|
  puts "------"
  p v
end

puts " "
puts "7."

puts "The first hash has a key of symbol x (x:)"
puts "The second hash take the value of x as its key"

puts " "
puts "8."

puts "The answer is B"