# Largest palindrome product

# Problem 4
# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# Solution
# largest product order:
# 999 * 999 = 998001
# 999 * 998 = 997002
# 998 * 998 = 996004
# 999 * 997 = 996003
# 998 * 997 = 995006
# 999 * 996 = 995004
# 997 * 997 = 994009
# 998 * 996 = 994008
# ...
# Or
# (999 - 0) * (999 - 0) = 998001
# (999 - 0) * (999 - 1) = 997002
# (999 - 1) * (999 - 1) = 996004
# (999 - 0) * (999 - 2) = 996003
# (999 - 1) * (999 - 2) = 995006
# (999 - 0) * (999 - 3) = 995004
# (999 - 2) * (999 - 2) = 994009
# (999 - 1) * (999 - 3) = 994008
# ...

def palindromic?(number)
  num_s = number.to_s
  num_s == num_s.reverse
end

puts("Result: #{cadidate_1} X #{cadidate_2} = #{result}")