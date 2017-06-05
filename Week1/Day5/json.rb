require "json"

puts "What's your GitHub login?"
login = gets.chomp

url = "https://api.github.com/users/#{login}"

call = open(url).read
result = JSON.parse(call)

puts "your name is #{result["name"]"
