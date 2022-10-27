# frozen_string_literal: true

require_relative '../maximum_subarray_sum'
require_relative 'spec_helper'

RSpec.describe MaximumSubarraySum do
  context 'when given empty array' do
    it { expect(described_class.new([]).call).to eq(0) }
  end
  context 'when given negative array' do
    it { expect(described_class.new([-2, -3]).call).to eq(0) }
  end
  context 'when give positive array' do
    it { expect(described_class.new([-2, 1, -7, 4, -10, 2, 1, 5, 4]).call).to eq(12) }
  end
end
