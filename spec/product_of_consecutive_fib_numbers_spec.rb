# frozen_string_literal: true

require_relative '../5kats/product_of_consecutive_fib_numbers'
require_relative 'spec_helper'

RSpec.describe ProducOfConsecutiveFibNumbers do
  context 'when invalid product is given' do
    it { expect(described_class.new(2345).call).to eq([55, 89, false]) }
  end
  context 'when valid product is given' do
    it { expect(described_class.new(602_070).call).to eq([610, 987, true]) }
  end
end
