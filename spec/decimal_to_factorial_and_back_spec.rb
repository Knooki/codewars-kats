# frozen_string_literal: true

require_relative '../decimal_to_factorial_and_back'
require_relative 'spec_helper'

RSpec.describe DecimalToFactorialAd do
  let(:dec_to_fact) do
    described_class.new('341010', 2990)
  end
  context 'when converting to fact string' do
    it { expect(dec_to_fact.dec_2_fact_string).to eq('4042100') }
  end
  context 'when converting to dec int' do
    it { expect(dec_to_fact.fact_string_2_dec).to eq(463) }
  end
end
