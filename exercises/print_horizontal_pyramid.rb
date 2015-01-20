# Method name: print_horizontal_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall at its tallest
#
# For example, print_horizontal_pyramid(4) should print
#
#    *
#   ***
#  *****
# *******

def print_horizontal_pyramid(height)
  n = 1
  h = height
  (1..height).each do |i|
    space = " "
    star = "*"
    print space * h + star * n
    n = n+2
    h = h-1
    print "\n"
  end
end

if __FILE__ == $0
  print_horizontal_pyramid(3)
  print_horizontal_pyramid(4)
  print_horizontal_pyramid(5)
  print_horizontal_pyramid(10)
end
