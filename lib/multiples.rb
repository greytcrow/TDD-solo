def is_multiple_of_3_or_5?(n)
	(n % 3).zero? || (n % 5).zero?
end

def sum_of_3_or_5_multiples(final_number)
	sum = 0
	unless final_number.is_a? Integer
		return "bad entry"
	end
	unless final_number >= 0
		return "bad entry"
	end
	for n in 1...final_number do
		if is_multiple_of_3_or_5?(n)
			sum += n
		end
	end
	return sum
end

sum_of_3_or_5_multiples ('1')