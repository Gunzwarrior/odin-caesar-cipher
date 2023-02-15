

def caesar_cipher(string, number)
  alphabet_array = ["a", "b", "c", "d", "e",
                    "f", "g", "h", "i", "j",
                    "k", "l", "m", "n", "o",
                    "p", "q", "r", "s", "t",
                    "u", "v", "w", "x", "y", "z"]
  
  my_string_array = string.chars
  result = my_string_array.map do |letter|
    if alphabet_array.none?(letter.downcase)
      letter
    elsif letter == letter.upcase
      if (alphabet_array.index(letter.downcase) + number) <= (alphabet_array.size - 1)
        alphabet_array[alphabet_array.index(letter.downcase) + number].upcase
      else
        new_index = (alphabet_array.index(letter.downcase) + number) - (alphabet_array.size - 1)
        alphabet_array[new_index - 1].upcase
      end
    else
      if (alphabet_array.index(letter) + number) <= (alphabet_array.size - 1)
        alphabet_array[alphabet_array.index(letter) + number]
      else
        new_index = (alphabet_array.index(letter) + number) - (alphabet_array.size - 1)
        alphabet_array[new_index - 1]
      end
    end
  end
result.join
end
