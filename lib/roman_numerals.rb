class RomanNumerals
  NUMERALS_RANGE = [
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

  ]

  def to_roman(value)
    if is_valid?(value)
      result = ''
      NUMERALS_RANGE.each do |number, numeral|
        while value >= number
          result += numeral
          value -= number
        end
      end

      result
    end
  end

  def to_integer(value)
    result = 0
    NUMERALS_RANGE.each do |number, numeral|
      while value.index(numeral).zero?
        result += number
        value.slice!(numeral)
      end
    end
    result
  end

  private

  def is_valid?(value)
    value >= 1 && value <= 3999
  end
end
