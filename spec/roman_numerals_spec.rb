require 'rspec'
require_relative '../lib/roman_numerals'

describe RomanNumerals do
  it 'Return nil for the number less than 1' do
    roman_numerals = RomanNumerals.new
    expect(roman_numerals.to_roman(0)).to eq(nil)
  end

  it 'Returns nil for the number greater than 3999' do
    roman_numerals = RomanNumerals.new
    expect(roman_numerals.to_roman(4000)).to eq(nil)
  end

  [
    [17, 'XVII'],
    [2434, 'MMCDXXXIV'],
    [3999, 'MMMCMXCIX'],
    [1000, 'M'],
    [900, 'CM'],
    [500, 'D'],
    [400, 'CD'],
    [100, 'C'],
    [90, 'XC'],
    [50, 'L'],
    [40, 'XL'],
    [10, 'X'],
    [9, 'IX'],
    [5, 'V'],
    [4, 'IV'],
    [1, 'I']
  ].each do |actual, expected|
    it "Translates #{actual}" do
      roman_numerals = RomanNumerals.new
      expect(roman_numerals.to_roman(actual)).to eq(expected)
    end
  end

  [
    ['I', 1],
    ['XXII', 22],
    ['CXL', 140]
  ].each do |actual, expected|
    it "Translates #{actual} " do
      roman_numerals = RomanNumerals.new
      expect(roman_numerals.to_integer(actual)).to eq(expected)
    end
  end
end
