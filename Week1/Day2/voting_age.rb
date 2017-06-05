puts "Please input your age:"
print ">"


age = gets.chomp.to_i
if age >= 18
  puts "You can vote." 
end

TERNARY OPERATOR
condition ? code_when_truthy : code_when_falsey

puts "heads or tails?"
choice = gets.chomp.downcase
coin = ["heads", "tails"].sample

result = (choice == coin) ? "winner" : "looser"
puts "#{result}, that was #{coin}"


number = gets.chomp.to_i
puts "your number #{number} is so even !" if number.even?






