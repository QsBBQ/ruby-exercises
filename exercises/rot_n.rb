# Method name: rot_n
# Inputs:      A String to be encoded plus an integer to "rotate" by
# Returns:     A ROT-N encoded message
# Prints:      Nothing

# In a previous kata, we wrote a ROT13 method.  In this one, we will write
# a ROT-N method.

# e.g., rot13(string) == rot_n(string, 13)
def rot_n(string, n)
  lowercase = ("a".."z").to_a
  uppercase = ("A".."Z").to_a
  string_encrypt = string.tr("a-zA-Z", "#{lowercase[n]}-za-#{lowercase[n-1]}#{uppercase[n]}-ZA-#{uppercase[n-1]}")
end

if __FILE__ == $0
  # See http://www.rot-n.com/ to generate test inputs and outputs
  p rot_n("The Quick Brown Fox Jumps Over The Lazy Dog", 5) == "Ymj Vznhp Gwtbs Ktc Ozrux Tajw Ymj Qfed Itl"
  p rot_n("The Quick Brown Fox Jumps Over The Lazy Dog", 13) == "Gur Dhvpx Oebja Sbk Whzcf Bire Gur Ynml Qbt"
  p rot_n("The Quick Brown Fox Jumps Over The Lazy Dog", 14) == "Hvs Eiwqy Pfckb Tcl Xiadg Cjsf Hvs Zonm Rcu"
end
