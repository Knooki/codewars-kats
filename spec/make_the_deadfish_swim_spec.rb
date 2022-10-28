# frozen_string_literal: true

require_relative '../6kats/make_the_deadfish_swim'
require_relative 'spec_helper'

RSpec.describe MakeTheDeadfishSwim do
  context 'when given string' do
    it { expect(described_class.new('iiiakljlkajsioio').call).to eq([10, 11]) }
  end
end
