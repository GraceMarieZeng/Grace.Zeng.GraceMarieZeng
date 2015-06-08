require 'rest-client'
require 'json'

#greet the user
puts "Hello! Welcome to Petitions."
puts "What kind of petition would you like to see? (open/closed)"
status = gets.strip
offset = 0

puts "Showing petitions of status: #{status}"

while true


#get the petitons
#petitions = ["Gun Control", "Cannibals", "Immigration"]
response= RestClient.get "https://api.whitehouse.gov/v1/petitions.json?status=#{status}&offset=#{offset}"
parsed_response = JSON.parse(response)

petitions = parsed_response["results"]

if petitions.empty?
	"Sorry no more"
	break
end
#print each petition
petitions.each_with_index do |petition, index|
	puts "#{petition["status"].upcase} #{offset + index + 1}. #{petition["title"]}"
end
offset += 10
puts "Would you like to see more? (y/n)"
	break  if gets.strip == "n"

end
#goodbye
puts "Thanks! Bye."