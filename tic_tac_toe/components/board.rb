class Board

    def initialize()
        @board = Array.new(3) {Array.new(3, '-')}
    end


    def print_board()
        @board.each do |row|
            puts row.join(' | ')
        end
    end

    def put_option(player, x, y)
        flag = false
        @board[x][y] = player.id == 1 ? 'X' :  'O'
        if winner?()
            puts "the winner is: " + player.name()
            flag = true
        end
        return flag
    end

    def winner?()
        (0..2).each do |row|
            if @board[row][0] != '-' && @board[row][0] == @board[row][1] && @board[row][1] == @board[row][2]
                return true
            end
        end

        (0..2).each do |col|
            if @board[0][col] != '-' && @board[0][col] == @board[1][col] && @board[1][col] == @board[2][col]
                return true
            end
        end

        if @board[0][0] != '-' && @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2]
            return true
        end 

        if @board[0][2] != '-' && @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0]
            return true
        end 
    end

    def available?(x, y)
        return @board[x][y] == '-'
    end

end