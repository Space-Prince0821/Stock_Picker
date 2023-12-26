def stock_picker(prices)
    return [] if prices.nil? || prices.length < 2
  
    buy_day = 0
    sell_day = 0
    max_profit = 0
  
    prices.each_with_index do |buy_price, l|
      (l + 1).upto(prices.length - 1) do |r|
        sell_price = prices[r]
        if sell_price - buy_price > max_profit
          max_profit = sell_price - buy_price
          buy_day = l
          sell_day = r
        end
      end
    end
  
    max_profit > 0 ? [buy_day, sell_day] : []
end  
  
# Example usage
#        [ 0, 1, 2, 3,  4, 5, 6, 7,  8]
prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts stock_picker(prices)