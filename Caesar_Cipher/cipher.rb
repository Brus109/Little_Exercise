def cipher(string, shift)
    newstring = "";

    string.each_char do |char|
        number = char.ord
        if(number.between?(65,90) || number.between?(97,122))
            for i in 1..shift do
                if(number == 90)
                    number = 65
                elsif(number == 122)
                    number = 97
                else
                    number+=1
                end
            end
        end
        character = number.chr
        newstring+= character
    end
    return newstring
end

puts cipher("What a string!", 5)

