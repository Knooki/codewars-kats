# frozen_string_literal: true

class MaximumSubarraySum
  attr_reader :given_arr

  def initialize(given_arr)
    @given_arr = given_arr
  end

  def call
    max_sum = 0
    (0..@given_arr.size).each do |i|
      (i..@given_arr.size).each { |x| max_sum = @given_arr[i..x].sum if @given_arr[i..x].sum > max_sum }
    end
    max_sum
  end
end
