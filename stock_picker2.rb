# after reading mastertenshi's solution, from memory...
# cool solution! 

def stock_picker(prices)
  min_price = prices[0]
  min_index = 0
  days = [0, 0]

  difference = 0

  prices.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_index = index
    end

    if price - min_price > difference
      difference = price - min_price
      days = [min_index, index]
    end
  end

  days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]