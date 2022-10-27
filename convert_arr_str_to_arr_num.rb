# frozen_string_literal: true

class ConvertArrStrToArrNum
  attr_reader :string_array

  def initialize(string_array)
    @string_array = string_array
  end

  def call
    string_array.map(&:to_f)
  end
end
