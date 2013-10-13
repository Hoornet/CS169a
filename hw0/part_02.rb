#Define a method hello(name) that takes a string representing a name
# and returns the string "Hello, " concatenated with the name.
def hello(name)
  "Hello, ".concat(name)
end

=begin
Define a method starts_with_consonant?(s) that takes a string and returns true if it
starts with a consonant and false otherwise. (For our purposes, a consonant is any letter other than A, E, I, O, U.)
NOTE: be sure it works for both upper and lower case and for non-letters!
=end
def  starts_with_consonant?(s)
  word = s.upcase.split(/\W+/).select { |w| w=~ /^[AEIOU]/i }
  return true if word.size > 0
  false
end
#puts starts_with_consonant?("sasshole")

=begin
Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string represents
a binary number that is a multiple of 4. NOTE: be sure it returns false if the string is not a valid binary number!
=end
def binary_multiple_of_4?(s)
  word = s=~/$10/i
  return true if word == nil


  false
end

puts binary_multiple_of_4?("10010")
