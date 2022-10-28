# frozen_string_literal: true

class ASCIIFun2FunnyDots
  attr_reader :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def call
    result = "+---+#{'---+' * (width - 1)}\n"
    (0..height - 1).each do |_i|
      result += "| o |#{' o |' * (width - 1)}\n"
      result += "+---+#{'---+' * (width - 1)}\n"
    end
    result.chop
  end
end
