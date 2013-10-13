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
  for num in numbers
    sum += num
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

  nums = []
  nums = numbers.sort!.last(2)
  nums[0] + nums[1]
end
#puts max_2_sum([10,20,30,19])


#Define a method sum_to_n? which takes an array of integers and an additional integer, n, as arguments and returns
#true if any two elements in the array of integers sum to n. An empty array should sum to zero by definition.
def sum_to_n?(numbers, n)
  size = numbers.size
  return true if size == 0 and n==0


  numbers.each do |el1|
    numbers_without_n = numbers.reject{ |el| el==el1 }  # create array without n
    numbers_without_n.each do |el2|
      if el1 + el2 == n
        return true
      end
    end
  end

  false
end

#puts sum_2_n?([10,20,30,19], 60)
#puts sum_2_n?([], 0)