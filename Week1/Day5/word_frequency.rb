# Wikipidia

article = open('article.txt').read

words = article.split(' ')

hash_words = {}

words.each do |word|
  if hash_words.key?(word)
    hash_words[word] += 1
  else
    hash_words[word] = 1
  end
end

sorted_hash = hash_words.sort_by do |word, frequency|
  frequency
end

p sorted_hash.reverse
