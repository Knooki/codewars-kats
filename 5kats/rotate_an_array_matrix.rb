# frozen_string_literal: true

# Best Solution
# def rotate matrix, direction
#   case direction
#   when 'clockwise'
#     matrix.transpose.map(&:reverse)
#   when 'counter-clockwise'
#     matrix.transpose.reverse
#   end
# end

class RotateAnArrayMatrix
  attr_reader :matrix, :direction

  def initialize(matrix, direction)
    @matrix = matrix
    @direction = direction
  end

  def call
    result_mtrx = Array.new(@matrix[0].size) { Array.new(@matrix.size) }
    @matrix.each_with_index do |row, i|
      row.each_with_index do |el, j|
        @direction == 'clockwise' ? result_mtrx[j][-(i + 1)] = el : result_mtrx[-(j + 1)][i] = el
      end
    end
    result_mtrx
  end
end
