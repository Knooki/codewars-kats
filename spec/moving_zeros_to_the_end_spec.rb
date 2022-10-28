# frozen_string_literal: true

require_relative '../5kats/moving_zeros_to_the_end'
require_relative 'spec_helper'

RSpec.describe MovingZerosToTheEnd do
  context 'when array is given' do
    it { expect(described_class.new([[1, 2, 0, 1, 0, 1, 0, 3, 0, 1]]).call).to eq([1, 2, 1, 1, 3, 1, 0, 0, 0, 0]) }
  end
end
