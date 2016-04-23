def stock_picker(prices)
	best_start = 0
	best_end = 0
	best_gain = 0

	for start_date in 0...prices.length
		for end_date in start_date...prices.length
			gain = prices[end_date] - prices[start_date]
			if gain > best_gain
				best_gain = gain
				best_start = start_date
				best_end = end_date
			end
		end
	end
	puts "[#{best_start}, #{best_end}]"
end

stock_picker([17,3,6,9,15,8,6,1,10])