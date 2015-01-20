# Method name: longest_string(list)
# Inputs:      a list of strings
# Returns:     the longest string in the list
# Prints:      Nothing
#
# For example, longest_string(["a", "zzzz", "c"]) should return "zzzz" since
# the other strings are 1 character long and "zzzz" is 4 characters long.
#
# To get the length of a string in the variable str, call str.length
# For example,
#   str = "zzzz"
#   str.length == 4

def longest_string(list)
  # This is your job. :)
  longest_so_far = list.first
  longest_list = []
  list.each do |item|
    if item.length >= longest_so_far.length
      longest_so_far = item
    end
  end
  return longest_so_far
end

if __FILE__ == $0
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  p longest_string(["a", "zzzz", "c"]) == "zzzz"
  p longest_string(["apple", "pear", "orange"]) == "orange"
  p longest_string(["123", "1234", "123456"]) == "123456"
  p longest_string(["a", "thepirates", "qwertyuiop"]) == "qwertyuiop"
  p longest_string(["a", "qwertyuiop", "thepirates"]) == "qwertyuiop" #I have a problem with words of same length. Will come back to build something.
end
