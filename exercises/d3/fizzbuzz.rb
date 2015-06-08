x=1 
while x <= 100
	if (x%5 == 0) && (x%3 == 0)
		puts "fizzbuzz"
	elsif x%5 == 0
		puts "buzz"
	elsif x%3 == 0
		puts "fizz"
	else 
		puts x
	end
	x=x+1 
end

