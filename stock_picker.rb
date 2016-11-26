def stock_picker(prices)
	puts prices.inspect

	min = prices.index(prices.min)
	max = prices.index(prices[min..-1].max)

	puts "#{Time.new(01, 01, min).strftime('%A')} is the best day to buy (#{min})"
	puts "#{Time.new(01, 01, max).strftime('%A')} is the best day to sell (#{max})"
end

stock_picker((1..100).to_a.shuffle[0...7])