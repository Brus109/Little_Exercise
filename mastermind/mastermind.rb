class Mastermind
    attr_accessor :code

    def initialize()
        @code = rand(1000..9999)
    end

    def validate_input(num)
        flag = false
        if(num / 1000 > 0 && num / 1000 < 10)
            flag = true
        end
        return flag
    end

    def validate_mastermind(number)
        guess_code = number.to_s.chars
        secret_code = @code.to_s.chars

        feedback = []

        flag = true

        secret_code.each_with_index do |c, i|
            if c == guess_code[i]
                feedback << {"index": i,  "status": "correct", "number": c}
            elsif secret_code.include?(guess_code[i])
                feedback << {"index": i,  "status": "wrong position", "number": guess_code[i]}
                flag = false
            else
                feedback << {"index": i,  "status": "not found", "number": guess_code[i]}
                flag = false
            end
        end

        puts feedback
        return flag
    end



end