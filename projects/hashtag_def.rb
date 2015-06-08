require 'Unirest'
require 'json'
#puts "These are the top trending hashtags on Twitter: "
#print top ten trending hashtages 
#hashtags.each_with_index do |hashtag, index|
	#puts "#{index + 1}. #{hashtag}"
#end
while true 
	puts "Type in your name."
	term = gets.strip
	if term == "done"
		puts "Come back tomorrow!"
		break
	end
	response = Unirest.get "https://mashape-community-urban-dictionary.p.mashape.com/define?term=#{term}",
  		headers:{
    		"X-Mashape-Key" => "XBu9GNRyiCmshxCbdYk81ODW31pap1vZA3Yjsn3G8kwuUdazl3",
    		"Accept" => "text/plain"
  		}
	#parsed_response = JSON.parse(response.to_s)
	parsed_response = response.body
	#puts parsed_response
	terms = parsed_response["list"]
	terms.each_with_index do |defs, index|
		puts "#{index+1}. #{defs["definition"]}"	
	end
	#look up the definition on urban
	#print the definition
end

