# frozen_string_literal: true

class DecimalToFactorialAd
  @dec_numack
  attr_reader :fact_str, :dec_numb

  def initialize(str, num)
    @fact_str = str
    @dec_num = num
  end

  def dec_2_fact_string
    r = 1
    result = ''
    while @dec_num.positive?
      number = (@dec_num % r)
      result += number > 9 ? (number + 55).chr : number.to_s
      @dec_num /= r
      r += 1
    end
    result.reverse
  end

  def fact_string_2_dec
    @fact_str.chars.reverse.map.with_index do |number, fact|
      number = number =~ /\d/ ? number.to_i : number.ord - 55
      (1..(fact.zero? ? 1 : fact)).inject(:*) * number
    end.sum
  end
end
