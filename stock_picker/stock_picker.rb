def stock_picker(array)
    days = [0 , 0]
    profit = 0
    dayBuy = array[0]
    indexBuy = 0

    (1...array.length).each do |i|
        if(array[i] < dayBuy)
            dayBuy = array[i]
            indexBuy = i
        else
            diff = array[i] - dayBuy
            if(diff > profit)
                profit = diff
                days[0] = indexBuy
                days[1] = i
            end
        end
    end
    return days
end


puts stock_picker([100, 180, 260, 310, 40, 535, 695])