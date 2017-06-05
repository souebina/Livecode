#  2.Write a game where the player has to guess a random price between 1 and 100 chosen by the program. The program should keep asking a price until the player guesses the right price. 

max = 100
min = 0

price = rand(100)
puts "Welcome to Price is Right! Guess a random number between 0 and 100"

#guess = gets.chomp.to_i
guess = (max + min) / 2

puts "You think the price is #{guess}"
counter = i

while guess != price
  if guess < price
   puts "It's more!"

   min = guess
  else
   puts "It's less!"

   max = guess
  end

   puts "Guess again!"
  #guess = gets.chomp.to_i
  guess = (max + min) / 2
  
  puts "You think the price is #{guess}"
  counter += 1
end

puts "Congrats!"
puts "The price was #{price}"
puts "It took you #{counter} tries"

