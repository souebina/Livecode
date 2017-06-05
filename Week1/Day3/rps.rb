arr = %w(rock paper scissors)

comp_guess = arr.sample

puts "Please enter (Rock, Paper or Scissors)"
print ">"
choice = gets.chomp

win_msg = ""
lost_msg = ""

if choice == comp_guess
  puts "Draw"
elsif choice == "rock"
  puts comp_guess == "paper" ? lose_msg : win_msg
elsif choice == "paper"
  puts comp_guess == "scissors" ? lose_msg : win_msg
elsif choice == "scissors"
  puts comp_guess == "rock" ? lose_msg : win_msg
else
  puts "Wrong input!"
end
