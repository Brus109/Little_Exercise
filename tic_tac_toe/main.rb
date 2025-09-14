require_relative 'components\board.rb'
require_relative 'components\player.rb'

board = Board.new()
player1 = Player.new()
player2 = Player.new()

turn = 1

loop do
    board.print_board()
    if turn == 1
        flag = player1.choose_possition(board)
        turn = 2
    else
        flag = player2.choose_possition(board)
        turn = 1
    end
break if flag
end

