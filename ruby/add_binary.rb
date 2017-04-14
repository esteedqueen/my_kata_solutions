# Instructions
# Implement a function that adds two numbers together and returns their sum in binary. 
# The conversion can be done before, or after the addition.
# The binary number returned should be a string.

# Solution
# TIL - converting string to binary 
def add_binary(a,b)
  s = a + b
  s.to_s(2)
end


# Test Case(s)

Test.assert_equals(add_binary(1,1),"10")
Test.assert_equals(add_binary(0,1),"1")
Test.assert_equals(add_binary(1,0),"1")
Test.assert_equals(add_binary(2,2),"100")
Test.assert_equals(add_binary(51,12),"111111")