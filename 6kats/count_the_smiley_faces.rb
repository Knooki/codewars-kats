# frozen_string_literal: true

class CountTheSmileyFaces
<<<<<<< HEAD
  attr_reader :given_arr
=======
  attr_reader :arr
>>>>>>> Done

  def initialize(given_arr)
    @given_arr = given_arr
  end

  def call
    given_arr.flat_map { |item| item.scan(/[:;][-~]?[)D]/) }.size
  end
end
