puts "Welcome to list builder!"
item_array = []
while true 
	puts "What can I add?"
	item = gets.strip
	item_array << item
	puts "Added! Your list is: #{item_array}"
end


