# frozen_string_literal: true

class ConvertArrStrToArrNum
  attr_reader :string_array

  def initialize(_string_array)
    @string_array = string_arraygit
  end

  def call
    string_array.map(&:to_f)
  end
end
