# Method name: time_format
# Inputs:      A number, representing seconds
# Returns:     A string, describing the number of weeks, days, minutes, seconds
# Prints:      Nothing

# Remember when we wrote the countdown clock to count down from 5 minutes?
# Let's write a method that takes in an integer, representing a number of
# seconds, and returns a string describing larger chunks of time.  For example,
#
#   time_format(1234)  == "20m 34s"
#   time_format(12345) == "3h 25m 45s"
#
# This should support weeks, days, hours, minutes, and seconds.

def time_format(seconds)
  if seconds < 60
    seconds = seconds
    time = "#{seconds}s"
  elsif seconds < 3600
    minutes = seconds/60
    seconds = seconds % 60
    time = "#{minutes}m #{seconds}s"
  else
    total_minutes = seconds/60
    hours = total_minutes/60
    minutes = seconds/60 % 60
    seconds = seconds % 60
    time = "#{hours}h #{minutes}m #{seconds}s"
  end
end

if __FILE__ == $0
  # Write your own test cases!  These four won't suffice.
  # Notice that we're looking at "edge" cases. We likely want to test
  # the boundaries where the parts "flip over", and also one output on
  # each side of that boundary, i.e., exactly 1 hour, 1 hour plus 1 second,
  # and 1 hour minute 1 second.
  #
  # Why? This is where our code is most likely to "go wrong."

  p time_format(0)    == "0s"
  p time_format(1)    == "1s"

  p time_format(59)   == "59s"
  p time_format(60)   == "1m 0s"
  p time_format(61)   == "1m 1s"

  p time_format(3600) == "1h 0m 0s"
  p time_format(3662) == "1h 1m 2s"
end
