require 'rest-client'
require 'json'

#greet the user
puts "Hello Friend! Welcome to funy reddit posts!"

while true

response= RestClient.get "http://www.reddit.com/r/funny.json"
parsed_response = JSON.parse(response)

data = parsed_response["data"]
children = data["children"]
children.each do |child|
	child_data = child["data"]
	puts child_data["title"]
end
puts "Thanks! Bye."