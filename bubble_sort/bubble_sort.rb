def bubble_sort(list)
    begin 
        flag = false
        (1...list.length).each do |i|
            if(list[i-1] > list[i])
                box = list[i]
                list[i] = list[i-1]
                list[i-1] = box
                flag = true
            end
        end
    end while flag
    return list
end

puts bubble_sort([16,23,78,12,330,22])
