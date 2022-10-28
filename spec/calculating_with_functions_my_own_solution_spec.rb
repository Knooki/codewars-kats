# frozen_string_literal: true

require_relative '../5kats/calculating_with_functions_my_own_solution'
require_relative 'spec_helper'

RSpec.describe CalculatingWithFunctionsMyOwnSolution do
  context 'when plus func called' do
    let(:cwf) { described_class.new }
    it { expect(cwf.seven(cwf.plus(cwf.five))).to eq(12) }
  end
  context 'when times func called' do
    let(:cwf) { described_class.new }
    it { expect(cwf.nine(cwf.times(cwf.five))).to eq(45) }
  end
end
