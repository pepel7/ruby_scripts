def stock_picker(stock_prices_per_day)
  prices = stock_prices_per_day.map(&:clone)
  max = prices.max

  loop do # get rid of the maxes at the beginning of the array
    if prices.index(max) == 0
      prices.delete(max)
    end
    max = prices.max
    break if prices.index(max) != 0
  end

  result = prices[0..prices.index(max)]
           .minmax
           .map { |value| stock_prices_per_day.index(value) } 
end

p stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]