def acronymizer(sentence)
   words = sentence.split(' ')
   letters = []
   words.each { |word| letters << word[0].upcase}

   return letters.join('')
end

puts acronymizer("This is a sample sentence")



