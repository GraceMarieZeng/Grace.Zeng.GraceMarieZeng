puts "Welcome to list builder++!"
item_array = []
run = true
while run
puts "What can I do for you?"
item = gets.strip.split
	if item[0]=="add"
		item_array.push(item[1])
		puts "Added! Your list is: #{item_array}"
	elsif item[0]=="remove"
		item_array.delete(item[1])
		puts "Remove! Your list is: #{item_array}"
	elsif item[0] =="quit"
		run =false
		puts "Bye!"
	else
		puts "Invalid! Enter to add or remove an item or quit."
	end
end 
