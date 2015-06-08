puts "Welcome to list builder++!"
item_hash = {}
run = true
while run
puts "What can I do for you?"
answer = gets.strip.split
	if answer[0]=="add"
		if item_hash.has_key?(answer[1])
			item_hash[answer[1]] = item_hash[answer[1]] + 1
			puts "Added! Your list is: #{item_hash}"
		else
			item_hash[answer[1]] = 1
			puts "Added! Your list is: #{item_hash}"
		end
	elsif answer[0]=="remove" 
		if item_hash.has_key?(answer[1])
			if item_hash[answer[1]] == 1
				item_hash.delete(answer[1])
				puts "Remove! Your list is: #{item_hash}"
			else 
				item_hash[answer[1]] = item_hash[answer[1]] - 1
				puts "Remove! Your list is: #{item_hash}"
			end
		else
			puts "This item was not in the list."
		end
	elsif answer[0] =="quit"
		run = false
		puts "Bye!"
	else
		puts "Invalid! Enter to add or remove an item or quit."
	end
end 
