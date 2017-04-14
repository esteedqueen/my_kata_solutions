# The museum of incredible dull things

# The museum of incredible dull things wants to get rid of some exhibitions. 
# Miriam, the interior architect, comes up with a plan to remove the most boring exhibitions. 
# She gives them a rating, and then removes the one with the lowest rating.

# However, just as she finished rating all exhibitions, she's off to an important fair, 
# so she asks you to write a program that tells her the ratings of the items after one removed the lowest one. 
# Fair enough.

# Task
# Given an array of integers, remove the smallest value. Do not mutate the original array/list. 
# If there are multiple elements with the same value, remove the one with a lower index. 
# If you get an empty array/list, return an empty array/list.
# Don't change the order of the elements that are left.

# Solution
# TIL - delete_at index position of smallest number so as to delete only one 
# instance of the smallest number without mutating the initial array

def remove_smallest(numbers)
  numbers.delete_at(numbers.index(numbers.sort[0]) || numbers.length)
  numbers
end

# Test Case(s)

describe "remove_smallest" do
  it "works for the examples" do
    Test.assert_equals(remove_smallest([1, 2, 3, 4, 5]), [2, 3, 4, 5], "Wrong result for [1, 2, 3, 4, 5]")
    Test.assert_equals(remove_smallest([5, 3, 2, 1, 4]), [5, 3, 2, 4], "Wrong result for [5, 3, 2, 1, 4]")
    Test.assert_equals(remove_smallest([2, 2, 1, 2, 1]), [2, 2, 2, 1], "Wrong result for [2, 2, 1, 2, 1]")
    Test.assert_equals(remove_smallest([]), [], "Wrong result for []")
  end
  
  def randarray()
    (1..rand(1..10)).map{rand(1..400)}
  end
  
  it "returns [] if array has only one element" do
    10.times do
      x = rand(1..400)
      Test.assert_equals(remove_smallest([x]), [], "Wrong result for [#{x}]")
    end
  end
  
  it "returns an array that misses only one element" do
    10.times do
      arr = randarray()
      Test.assert_equals(remove_smallest(arr.dup).length, arr.length - 1, "Wrong sized result for #{arr}")
    end
  end
end