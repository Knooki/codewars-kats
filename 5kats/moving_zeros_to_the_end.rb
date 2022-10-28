# frozen_string_literal: true

class MovingZerosToTheEnd
  attr_reader :given_arr

  def initialize(arr)
    @given_arr = arr
  end

  def call
    initial_size = @given_arr.size
    @given_arr.delete(0)
    @given_arr += [0] * (initial_size - @given_arr.size)
  end
end
