# frozen_string_literal: true

class AllUnique
  attr_reader :given_str

  def initialize(given_str)
    @given_str = given_str
  end

  def call
    given_str.each_char { |item| return false if given_str.count(item) > 1 }
    true
  end
end
