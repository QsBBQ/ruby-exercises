# Method name: pig_latin
# Inputs:      A string representing a single word (i.e., no spaces)
# Returns:     The word translated into "pig latin"
# Prints:      Nothing

# Note #1
# There are two rules for translating something into "pig latin":
#   1. If a word begins with a consonant or sequence of consonants, move the
#      sequence of consonants  to the end of the word and then append "ay"
#   2. If a word begins with a vowel, just append "ay"
#
# See: http://en.wikipedia.org/wiki/Pig_Latin#Rules
#
# Here are some examples:
# pig_latin("happy") == "appyhay"

def pig_latin(word)
  alphabet = ("a".."z").to_a
  vowels = ["a", "e", "i", "o", "u"]
  consonants = alphabet - vowels
  ay = "ay"
  counter = 0
  word.split("").each do |letter|
    if consonants.include?(letter) and counter == 0  #Ok on the first letter moved the letter and added ay
      word = word[1..-1] + letter + ay
    elsif consonants.include?(letter) and counter > 0  #word with consonants and ay already
      word = word[1..-3] + letter + ay
    elsif vowels.include?(letter) and counter == 0 #For words starting with a vowel in first letter
      word = word[0..-1] + ay
      break
    elsif vowels.include?(letter)  #the final break
      word = word
      break
    end
    counter += 1
  end
  return word
end

if __FILE__ == $0
  p pig_latin("happy") == "appyhay"
  p pig_latin("duck")  == "uckday"
  p pig_latin("glove") == "oveglay" # Notice what happened to "gl"

  p pig_latin("egg")   == "eggay"
  p pig_latin("inbox") == "inboxay"
  p pig_latin("eight") == "eightay"
  p pig_latin("schtschurowski") == "urowskischtschay"  # Just wanted to be sure
end
