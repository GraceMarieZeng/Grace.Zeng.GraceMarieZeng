
puts "How old are you?"

age = gets.strip.to_i

if (age >=21) && (age <= 50)
	puts "Come on in!"
elsif age <=21
	puts "Sorry. You aren't old enough"
elsif age >=50
	puts "Sorry. You are too old."
end