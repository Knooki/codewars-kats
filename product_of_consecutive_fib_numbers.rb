# frozen_string_literal: true

class ProducOfConsecutiveFibNumbers
  attr_reader :product

  def initialize(product)
    @product = product
  end

  def call
    a = 0
    b = 1
    a, b = b, a + b while @product > a * b
    [a, b, @product == a * b]
  end
end

p ProducOfConsecutiveFibNumbers.new(2345).call
