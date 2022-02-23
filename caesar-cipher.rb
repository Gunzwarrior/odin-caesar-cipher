

def caesar_cipher(string, number)
  alphabet_array = ["a", "b", "c", "d", "e",
                    "f", "g", "h", "i", "j",
                    "k", "l", "m", "n", "o",
                    "p", "q", "r", "s", "t",
                    "u", "v", "w", "x", "y", "z"]
  # magic code
  my_string_array = string.chars
  p my_string_array.map {|letter| alphabet_array.index(letter)}
  

  #use index function
end

#test
caesar_cipher("What a string!", 0)