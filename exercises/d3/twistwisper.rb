def wisper(message)
	puts "#{message.downcase}"
end
wisper("ABOUT ME")

def twist(message)
	split_message = message.split("");
	mixed = split_message.shuffle
	mixed_joined = mixed.join
	puts "#{mixed_joined}"
end
twist("Hi there I am still hungry")