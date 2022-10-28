# frozen_string_literal: true

require_relative '../5kats/calculating_with_functions'
require_relative 'spec_helper'

RSpec.describe 'calculating_with_functions.rb' do # Просто нет класса в данном файле
  context 'when plus func called' do
    it { expect(seven(plus(five))).to eq(12) }
  end
  context 'when times func called' do
    it { expect(nine(times(five))).to eq(45) }
  end
end
