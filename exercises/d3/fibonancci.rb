fib_array = [1,1]
x=0
y=1

while x < 100
	fib_array << [(fib_array[x] + fib_array[y])]
	x = x+1
	y= y+1
end 
puts fib_array
#puts "Enter a number:"
#number = gets.strip.to_i
#puts "Fibonnaci at #{number}: #{fib_array[number]}" 