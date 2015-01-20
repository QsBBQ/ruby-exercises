# Method name: mean
# Input: a list of numbers
# Returns: the MEAN (aka average) of all the numbers in the list
# Prints: Nothing
#
# See: https://www.freemathhelp.com/arithmetic-mean.html
#
# For example,
#   The mean of 5 and 2 is 2.5 since (5 + 2)/2 is 2.5
#   The mean of 5 and 5 is 5.0 since (5 + 5)/2 is 5.0
#   The mean of 10, 20, and 30 is 20.0 since (10 + 20 + 30)/3 is 20.0
#   etc.
#
# Things we'll need:
#   1. A way to calculate the sum of the numbers in the list
#   2. A way to calculate the length of the list
#
# See: http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-length

# This is how we require the sum.rb file in the current folder.
# We can now use the "sum" method we defined there as if we defined it here!
require_relative './sum'

def mean(list)
  total = sum(list) # This is the "sum" method from our sum.rb file
  # result = ____   # Given we have the sum of the list, how can we calculate the average?
  result = total/list.length.to_f
  return result
end

if __FILE__ == $0
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  p mean([0,1]) == 0.5
  p mean([1,2]) == 1.5
  p mean([1,2,3,4,5,6,7,8,9,10]) == 5.5
  p mean([100,-1000]) == -450
end
