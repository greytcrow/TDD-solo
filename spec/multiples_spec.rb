require_relative '../lib/multiples.rb'

describe "the is_multiple_of_3_or_5? method" do
	it "should return TRUE when an integer is a multiple of 3 or 5" do
	  expect(is_multiple_of_3_or_5?(3)).to eq(true)
	  expect(is_multiple_of_3_or_5?(5)).to eq(true)
	  expect(is_multiple_of_3_or_5?(51)).to eq(true)
	  expect(is_multiple_of_3_or_5?(45)).to eq(true)
	end
  
	it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
		expect(is_multiple_of_3_or_5?(2)).to eq(false)
		expect(is_multiple_of_3_or_5?(7)).to eq(false)
		expect(is_multiple_of_3_or_5?(43)).to eq(false)
		expect(is_multiple_of_3_or_5?(58)).to eq(false)
	end
end

describe "sum_of_3_or_5_multiples method" do
	it "should return the phrase 'bad entry'" do
		expect(sum_of_3_or_5_multiples('à')).to eq("bad entry")
		expect(sum_of_3_or_5_multiples(15.9)).to eq("bad entry")
		expect(sum_of_3_or_5_multiples(-18)).to eq("bad entry")
	end

	it "should sum all the numbers that are multiple of three or five" do
		expect(sum_of_3_or_5_multiples(5)).to eq(3)
		expect(sum_of_3_or_5_multiples(3)).to eq(0)
		expect(sum_of_3_or_5_multiples(15)).to eq(45)
	end
end	