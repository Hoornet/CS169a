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
def starts_with_consonant?(s)
  return false if s.empty?


  ret = s.gsub(/\w/, '')
  return false if !ret.empty?



  ret = s.upcase =~ /^[AEIOU]/i
  return false if ret == 0
  true
end
#puts starts_with_consonant?("sasshole")

=begin
Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string represents
a binary number that is a multiple of 4. NOTE: be sure it returns false if the string is not a valid binary number!
=end
def binary_multiple_of_4?(s)
  ret = s.gsub(/[10]/, '\1')
  return false if !ret.empty?

  return true if s =~ /^(0|1)*00$/
  false
end

puts binary_multiple_of_4?("100e10")
puts binary_multiple_of_4?("1010101010100")
