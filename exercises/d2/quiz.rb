puts "Welcome to Grace's mini quiz."
puts "What's my middle and last name?"
middle = gets.downcase.strip
last = gets.downcase.strip
points = 0
if (middle == "marie") && (last == "zeng") 
	puts "Right!"
	points = points + 1
else 
	puts "Wrong!"
end
puts "How many siblings do I have?"
siblings = gets.strip.to_i
if siblings == 2
	puts "Right!"
	points = points + 1
else 
	puts "Wrong!"
end
puts "How old am I?"
my_age = gets.strip.to_i
if my_age == 19
	puts "Right!"
	points = points + 1
else 
	puts "Wrong!"
end
if points == 1
	puts "You got #{points} question right!"
else 
	puts "You got #{points} questions right!"
end
