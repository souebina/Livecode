def simple_encrypt(text, permutation_level)

# define the array
  alphabet = ("A".."Z").to_a
# split your text in an array
  cipher = text.split("").map do |char|
# identify the index number of each char
    index = alphabet.index(char)
# if char exists within array... increment it by 3
    if index
      new_index = (index + permutation_level) % 26
      alphabet[new_index]
    else
      char
    end
# if no index number exists.. return that char
  end
  return cipher.join
end


def enhanced_encrypt(text, permutation_level)
  vowels = %w(A E I O U)
  cipher = simple_encrypt(text, permutation_level).split("").map do |char|
  # if the array of vowels contains the character passed in.. transform it to lowercase

    vowels.include?(char) ? char.downcase : char

    #if vowels.include?(char)
    #  char.downcase
    #else
    #  char
    #end
  end

  return cipher.join
end

def decrypt(cipher)
  # define a variable to capture all possibilities in
  possibilities = []
  # account for all the possible permutations
  26.times do |i|
      possibilities << simple_encrypt(cipher, i)
  end

  return possibilities
  # return all possibilities

end



# puts enhanced_encrypt("abc ABC", 4)
print decrypt("EBIIL")
