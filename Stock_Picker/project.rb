def picker(prices)
  # we define a variable to keep track of the best profit we can make.
  # We start with 0 because we haven't made any trades yet.
  best_profit = 0

  # We have not picked any buy or sell days yet.
  # We will save the best days in this variable.
  best_days = nil

  # Try each day as a possible buy day.
  # We use each_with_index so we can get the day number as well as the price.
  prices.each_with_index do |buy_price, buy_day|


    # Try each later day as a possible sell day.
    # We use each_with_index again to get the day number and price.
    prices.each_with_index do |sell_price, sell_day|

      # We can only sell after we buy.
      next unless sell_day > buy_day

      # Work out how much money we would make on the days we buy and sell.
      profit = sell_price - buy_price

      # we save these days if they make more money than our previous best days.
      if profit > best_profit
        best_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end

  # Return the best buy and sell days.
  best_days
end

p picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1, 4]  (buy at 3(index 1), sell later at 15(index 4) for a profit of 12).