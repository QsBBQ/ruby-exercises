# Method name: shortest_string(list)
# Inputs:      a list of strings
# Returns:     the shortest string in the list
# Prints:      Nothing

def shortest_string(list)
  # This is your job. :)
  shortest_so_far = list.first
  list.each do |item|
    if item.length < shortest_so_far.length
      shortest_so_far = item
    end
  end
  return shortest_so_far
end

if __FILE__ == $0
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  p shortest_string(["apple", "pear", "orange"]) == "pear"
  p shortest_string(["123", "1234", "123456"]) == "123"
  p shortest_string(["a", "zzzz", "c"]) == "a"  #Maybe add a array for ties..or something.
end
