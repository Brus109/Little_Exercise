class Player
    @@count = 0
    attr_accessor :name, :id
    def initialize()
        puts "give me your name"
        @name = gets.chomp
        @@count += 1
        @id = @@count
    end

    def choose_possition(board)
        loop do
            puts "turn of " + self.name
            puts "enter row (0-2)"
            row = gets.chomp.to_i

            puts "enter column (0-2)"
            col = gets.chomp.to_i
            if ((row >= 0 && row < 3) && (col >= 0 && col < 3) && board.available?(row, col))
                return board.put_option(self, row, col)
            end
            puts "Incorrect data"
        end
    end
end
