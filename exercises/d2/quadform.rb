

puts "Hey bru! Lets compute some quadform."
puts "Give me A:"
a = gets.strip.to_f
puts "Give me B:"
b = gets.strip.to_f
puts "Give me C:"
c = gets.strip.to_f
puts "beep beep computing boop boop..."
x = ((-1*b) + (Math.sqrt(b*b - 4*a*c)))/(2*a)
# and
y = ((-1*b) - (Math.sqrt(b*b - 4*a*c)))/(2*a)
puts "x is either #{x} or #{y}"
puts "Goodbye!"
