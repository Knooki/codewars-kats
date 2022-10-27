# frozen_string_literal: true

class MakeTheDeadfishSwim
  DEADFISH_REGEX = /[^isdo]/.freeze

  attr_reader :given_str

  def initialize(given_str)
    @given_str = given_str
  end

  def call
    clean
    result_arr = []
    value = 0
    @given_str.each_char do |x|
      case x
      when 'i'
        value += 1
      when 'd'
        value -= 1
      when 's'
        value *= value
      when 'o'
        result_arr << value
      end
    end
    result_arr
  end

  def clean
    @given_str = @given_str.gsub(DEADFISH_REGEX, '')
  end
end
