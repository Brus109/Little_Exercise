dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
    myHash = {}

    newWords = word.split(" ")
    newWords.each do |exact_word|
        dictionary.each do |word| 
            if exact_word.include?(word)
                if myHash.key?(word)
                    myHash[word] += 1
                else
                    myHash[word] = 1
                end
            end
        end
    end
    return myHash
end

puts substrings("below it i go below", dictionary)