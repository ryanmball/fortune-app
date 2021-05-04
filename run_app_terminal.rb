require "http"

puts "Hello! This is a fun app that does some random things."
puts "Here are your options:"
puts "1. Tell your fortune"
puts "2. Predict the upcoming lotto numbers"
puts "3. Print the lyrics to 99 Bottles of Beer"

puts "Please enter the number corresponding to what you would like to do:"
action = gets.chomp.to_i

fortune = HTTP.get("http://127.0.0.1:3000/fortune.json")
lotto = HTTP.get("http://127.0.0.1:3000/lotto.json")
bottles = HTTP.get("http://127.0.0.1:3000/lyrics.json")

if action == 1
  puts fortune.parse["fortune"]
elsif action == 2
  puts lotto.parse["numbers"]
elsif action == 3
  puts bottles.parse["lyrics"]
end
