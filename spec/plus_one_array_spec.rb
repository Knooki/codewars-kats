# frozen_string_literal: true

require_relative '../plus_one_array'
require_relative 'spec_helper'

RSpec.describe PlusOneArray do
  context 'when given simple number' do
    it { expect(described_class.new([2, 3, 9]).call).to eq([2, 4, 0]) }
  end

  context 'when given number in zero infront' do
    it { expect(described_class.new([0, 4, 2]).call).to eq([0, 4, 3]) }
  end
end
