# frozen_string_literal: true

require_relative '../7kats/all_unique'
require_relative './spec_helper'

RSpec.describe AllUnique do
  context 'when given string array' do
    it { expect(described_class.new('abcdef').call).to eq(true) }
  end
end
