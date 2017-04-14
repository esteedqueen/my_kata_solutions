# Instructions
# Implement a method that accepts 3 integer values a, b, c. 
# The method should return true if a triangle can be built with the sides of given length and false in any other case.
# (In this case, all triangles must have surface greater than 0 to be accepted).

# TIL - the sum of any 2 sides must be greater than the third side

def isTriangle(a,b,c)
  if (a > 0) || (b > 0) || (c > 0)
    if ((a + b) > c) && ((a + c) > b) && ((b + c) > a)
      return true
    else
      return false
    end
  else
    return false
  end
end


# Sample Tests

Test.describe("isTriangle") do
  Test.it("Public tests") do
    Test.assert_equals(isTriangle(1,2,2), true)
    Test.assert_equals(isTriangle(7,2,2), false)
  end
end
