# frozen_string_literal: true

require_relative '../5kats/rotate_an_array_matrix'
require_relative 'spec_helper'

RSpec.describe RotateAnArrayMatrix do
  context 'when given square matrix and clockwise direction' do
    let(:matrix) do
      [[1, 2, 3],
       [4, 5, 6],
       [7, 8, 9]]
    end
    it { expect(described_class.new(matrix, 'clockwise').call).to eq([[7, 4, 1], [8, 5, 2], [9, 6, 3]]) }
  end
  context 'when given 3x4 matrix and counter-clockwise direction' do
    let(:matrix) do
      [[1, 2, 3, 4],
       [5, 6, 7, 8],
       [9, 10, 11, 12]]
    end
    it {
      expect(described_class.new(matrix,
                                 'counter-clockwise').call).to eq([[4, 8, 12], [3, 7, 11], [2, 6, 10], [1, 5, 9]])
    }
  end
end
