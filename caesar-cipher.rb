

def caesar_cipher(string, number)
  alphabet_array = ["a", "b", "c", "d", "e",
                    "f", "g", "h", "i", "j",
                    "k", "l", "m", "n", "o",
                    "p", "q", "r", "s", "t",
                    "u", "v", "w", "x", "y", "z"]
  # magic code
  
  my_string_array = string.chars
  result = my_string_array.map do |letter|
    if letter == letter.upcase
      alphabet_array[alphabet_array.index(letter.downcase) + number].upcase
    else
      alphabet_array[alphabet_array.index(letter) + number]
    end
  end
  p result
end

#test
caesar_cipher("abGdEf", 5)