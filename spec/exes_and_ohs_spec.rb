# frozen_string_literal: true

require_relative '../exes_and_ohs'
require_relative 'spec_helper'

RSpec.describe ExesAndOhs do
  context 'given string' do
    it { expect(described_class.new('xXoo').call).to eq(true) }
  end
end
