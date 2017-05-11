#  > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12

# 1) get the index of the 

def stock_picker prices
	best_days = []
	best_profit = 0

	prices.length.times do |i|
		j = i
		for j in i...prices.length
			if prices[j] - prices[i] > best_profit
				best_profit = prices[j] - prices[i]
				best_days[0] = i
				best_days[1] = j
			end
		end
	end
	best_days
end

# p stock_picker([17,3,6,9,15,8,6,1,10]) #[1, 4]
# p stock_picker([17,7,2,9,15,8,6,1,10]) #[2, 4]
# p stock_picker([17,7,2,9,6,8,3,5,17]) #[2, 8]

def stock_picker_benchmarker number_of_runs, stock_array_size
	start_time = Time.now
	time_per_run = []
	
	number_of_runs.times do
		stock_input = Array.new(stock_array_size) { rand(1..20) }
		start_iter  = Time.now

		#p stock_picker(stock_input)
		
		end_iter 	= Time.now
		time_per_run.push(end_iter - start_iter)
	end

	end_time = Time.now
	total_duration = end_time - start_time
	average_time_per = time_per_run.inject(0.0) { |sum, el| sum + el} / time_per_run.size

	puts "Number of Runs: #{number_of_runs}"
	puts "Number of Days for stock picker: #{stock_array_size}"
	puts "Total Duration of test: #{total_duration} ms"
	puts "Average time per run: #{average_time_per} ms"
end

stock_picker_benchmarker(10000, 20)