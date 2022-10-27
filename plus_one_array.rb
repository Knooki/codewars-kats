# frozen_string_literal: true

class PlusOneArray
  attr_reader :given_arr

  def initialize(given_arr)
    @given_arr = given_arr
  end

  def call
    return nil if @given_arr.empty? || @given_arr.any? { |x| x.negative? || x > 9 }

    @given_arr.join.next.split('').map(&:to_i)
  end
end
