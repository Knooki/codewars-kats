# frozen_string_literal: true

class CountTheSmileyFaces
  attr_reader :given_arr

  def initialize(given_arr)
    @given_arr = given_arr
  end

  def call
    given_arr.flat_map { |item| item.scan(/[:;][-~]?[)D]/) }.size
  end
end
