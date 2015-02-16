# Method name: to_roman
# Inputs:      A number
# Returns:     A String representing the number in English
# Prints:      Nothing

# Write a method that takes a positive integer as input and returns the input
# in "plain English."  For example,
#
#   to_english(1)     == "one"
#   to_english(12)    == "twelve"
#   to_english(123)   == "one hundred twenty three"
#   to_english(1234)  == "one thousand two hundred thirty four"
#   to_english(12345) == "twelve thousand three hundred forty five"
#
# You can decide the largest power of 10 you wish to support, but you should
# support at least up to the billions.

# Hint #1
# Write down a bunch of examples and look for patterns.
# What words make up "special cases?" There are likely fewer than you think
# if you can find ways to combine simpler patterns into larger ones.

def to_english(string)
  #Hmm clunky
  hash = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine", 10=>"ten",
          11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen", 20=>"twenty",
          30=>"thirty", 40=>"fourty", 50=>"fifty", 60=>"sixty", 70=>"seventy", 80=>"eighty", 90=>"ninety", 100=>"hundred", 1000=>"thousand"}
  # num = string
  # string = string.to_s
  # if num < 21
  #   words = hash[num]
  # elsif num > 20 && num < 100
  #   if string[1] == "0"
  #     words = hash[num]
  #   else
  #     words = hash[string[0].to_i * 10] + " " + hash[string[1].to_i]
  #   end
  # elsif num > 99 && num < 1000
  #   if string[1] == "0" && string[2] == "0"
  #     words = hash[string[0].to_i] + " " + "hundred"
  #   elsif string[2] == "0"
  #     words = hash[string[0].to_i] + " " + "hundred" + " " + hash[string[0].to_i * 10] + " " + hash[string[1].to_i]
  #   else
  #     words = hash[string[0].to_i ] + " " + "hundred" + " " + hash[string[1].to_i * 10] + " " + hash[string[2].to_i]
  #   end
  # elsif num > 999
  #   if string[1] == "0" && string[2] == "0" && string[3] == "0"
  #     words = hash[string[0].to_i] + " " + "thousand"
  #   elsif string[2] == "0" && string[3] == "0"
  #     words = hash[string[0].to_i] + " " + "thousand" + " " + hash[string[1].to_i] + "hundred"
  #   elsif string[3] == "0"
  #     words = hash[string[0].to_i] + " " + "thousand" + " " + hash[string[1].to_i] + "hundred" + hash[string[2].to_i * 10]
  #   else
  #     words = hash[string[0].to_i] + " " + "thousand" + " " + hash[string[1].to_i] + " " + "hundred" + " " + hash[string[2].to_i * 10] + " " + hash[string[3].to_i]
  #   end
  # else num > 1999
  #   puts "sorry this app is limited"
  # end
  # puts words
  # return words
  #found a recursive example seemed clever but couldn't get it working fully
  sp = " "
  word = ''
  hash.each do |num, name|
    if string == 0
      word = "zero"
    elsif string.to_s.length == 1 && string/num > 0
      word = "#{name}"
    elsif string < 100 && string/num > 0
      word = "#{name}" if string%num == 0
      word = "#{name}" if to_english(string%num)
    elsif string/num > 0
      word = to_english(string/num) + " #{name} " + to_english(string%num)
    end
  end
  word
end

if __FILE__ == $0
  # Hey, there are a bunch of lovely test cases above.  Start with those. :)
  p to_english(1)  == "one"
  p to_english(12)  == "twelve"
  p to_english(20)  == "twenty"
  p to_english(21)  == "twenty one"
  p to_english(30)  == "thirty"
  p to_english(99)  == "ninety nine"
  p to_english(123)  == "one hundred twenty three"
  p to_english(220) == "two hundred twenty"
  p to_english(900)  == "nine hundred"
  p to_english(1234)  == "one thousand two hundred thirty four"
  p to_english(12345)  == "twelve thousand three hundred forty five"
end
