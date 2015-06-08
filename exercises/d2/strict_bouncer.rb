puts "Welcome to da hip hoppin club. What's your age?"
your_age = gets.strip.to_i
if your_age < 21
	puts "Too young, fool!"
elsif your_age >= 65
	puts "Go back to the nursing home!"
else 
	puts "aw yeah c'mon in."
end 