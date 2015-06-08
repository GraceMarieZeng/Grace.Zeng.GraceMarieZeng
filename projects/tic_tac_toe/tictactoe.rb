# tictactoe.rb

# How will you keep track of whose turn it is?
# What data structure will you use to keep track of the board? You only
#   know two (Array, Hash), but remember they can be nested (meaning an
#   array can contain another array—it can even contain a hash that contains
#   another hash, though unclear if that will be useful :P)
# When a player makes a move, what should happen?
# How do you keep track of which squares have Xs and which have Os?
# How do you detect a winner?
# When does the program stop? Is there a loop? If so, what kind?

turn = 1
game_over = false

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def print_game(board)
	puts "#{board[0]} | #{board[1]} | #{board[2]}"
	puts "----------"
	puts "#{board[3]} | #{board[4]} | #{board[5]}"
	puts "----------"
	puts "#{board[6]} | #{board[7]} | #{board[8]}"
end


while game_over == false
	while turn == 1
	puts "Player 1:"
	one_input = gets.strip
		if (one_input == "0") || (one_input == "1")||(one_input == "2") || (one_input == "3") || (one_input == "4") ||
			(one_input == "5") || (one_input == "6") || (one_input == "7") || (one_input == "8")
			one_input = one_input.to_i
			if board[one_input] == " "
				board[one_input] = "x"
				turn = 2
				print_game(board)
			else 
				puts "Sorry, that spot is taken!"
			end
		else
			puts "Invalid, please write a number between 0-8."
		end
	end
	if ((board[0]==board[1])&&(board[0]==board[2]) && !(board[0]==" ")) ||((board[0]==board[5])&&(board[0]==board[9])&& !(board[0]==" ")) ||((board[0]==board[4])&&(board[0]==board[7])&& !(board[0]==" ")) ||((board[4]==board[5])&&(board[4]==board[6])&& !(board[4]==" ")) ||((board[7]==board[8])&&(board[7]==board[9])&& !(board[7]==" ")) ||((board[2]==board[5])&&(board[2]==board[8])&& !(board[2]==" ")) ||((board[3]==board[6])&&(board[3]==board[9])&& !(board[3]==" ")) ||((board[3]==board[5])&&(board[3]==board[7])&& !(board[3]==" ")) 
		game_over = true
		break
	end

	while turn == 2
	puts "Player 2:"
	two_input = gets.strip
		if (two_input == "0") || (two_input == "1")||(two_input == "2") || (two_input == "3") || (two_input == "4") ||
			(two_input == "5") || (two_input == "6") || (two_input == "7") || (two_input == "8")
			two_input = two_input.to_i
			if board[two_input] == " "
				board[two_input] = "o"
				turn = 1
				print_game(board)
			else 
				puts "Sorry, that spot is taken!"
			end
		else
			puts "Invalid, please write a number between 0-8."
		end
	end
	if ((board[0]==board[1])&&(board[0]==board[2]) && !(board[0]==" ")) ||((board[0]==board[5])&&(board[0]==board[9])&& !(board[0]==" ")) ||((board[0]==board[4])&&(board[0]==board[7])&& !(board[0]==" ")) ||((board[4]==board[5])&&(board[4]==board[6])&& !(board[4]==" ")) ||((board[7]==board[8])&&(board[7]==board[9])&& !(board[7]==" ")) ||((board[2]==board[5])&&(board[2]==board[8])&& !(board[2]==" ")) ||((board[3]==board[6])&&(board[3]==board[9])&& !(board[3]==" ")) ||((board[3]==board[5])&&(board[3]==board[7])&& !(board[3]==" ")) 
		game_over = true
		break
	end 
end

if turn == 1
	puts "Congrats, player 2 won!"
else 
	puts "Congrats, player 1 won!" 
end 

