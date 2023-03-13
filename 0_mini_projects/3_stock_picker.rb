def stock_picker(stock)
    buy = stock[0]
    buy_index = 0
    profit = 0

    buy_sell_index = [0, 0]

    stock.each_with_index do | item, index | 
        if item < buy
            buy_index = index
            buy = item
            next
        end

        if item - buy > profit
            profit = item - buy
            buy_sell_index = [buy_index, index]
        end
    end

    return buy_sell_index
end

array = [17, 3, 6, 9, 15, 8, 5, 1, 10]
p stock_picker(array)