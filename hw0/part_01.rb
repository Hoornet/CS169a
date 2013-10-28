=begin
HW0 PART 1  (100 points possible)
Check the documentation on Array, Hash and Enumerable as they could help tremendously with these exercises. :-)
=end

#Define a method sum which takes an array of integers as an argument and returns the sum of its elements.
# For an empty array it should return zero.
def sum(numbers)
  size = numbers.size
  return 0 if size == 0

  sum = 0
  numbers.each do |element|
    sum += element
  end

  sum
end
# test for sum
#puts sum([10,20,30])


# Define a method max_2_sum which takes an array of integers as an argument and returns the sum of its two largest
# elements. For an empty array it should return zero. For an array with just one element, it should return that element.

def max_2_sum(numbers)
  size = numbers.size
  return 0 if size == 0
  return numbers[0] if size == 1
#  nums = []
  nums = numbers.sort!.last(2)
  nums[0] + nums[1]
end
#puts max_2_sum([10,20,30,19])


#Define a method sum_to_n? which takes an array of integers and an additional integer, n, as arguments and returns
#true if any two elements in the array of integers sum to n. An empty array should sum to zero by definition.

#procedural version
def sum_to_n?(array, n)

  return true if array.empty? && n == 0
  i=0
  j=1

  while i < array.size
    while j<array.size
      if array[i]+array[j]==n
        return true
      end
      j+=1
    end
    i+=1
    j=i+1
  end

  false
end

#puts sum_to_n?([10,20,30,19], 60)
#puts sum_to_n?([], 0)

# functional version
def sum_2_n?(arr, n)
  return true if arr.empty? && n == 0

  desired_number = 0
  arr.each do |e|
    desired_number = n - e
    return true if arr.include?(desired_number)   #=> false or true
  end

  false
end
puts sum_2_n?([10,20,40,19], 60)
puts sum_2_n?([], 0)