# frozen_string_literal: true

class Counter
  attr_reader :arr

  def initialize(arr)
    @arr = arr
  end

  def call
    arr.flat_map { |item| item.scan(/[:;][-~]?[)D]/) }.size
  end
end
