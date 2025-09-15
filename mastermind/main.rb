require_relative 'mastermind.rb'

master = Mastermind.new()
nums = 0
chances = 0

loop do
    loop do
        puts "give me your guess"
        nums = gets.chomp.to_i 
        break if master.validate_input(nums)
        puts "incorrect format, rembember the number needs to have 4 digits, try it again"
    end
    chances += 1
    break if master.validate_mastermind(nums) || chances == 12
end

puts "you lose, the correct answer was " + master.code().to_s

