# frozen_string_literal: true

require_relative '../parser'
require_relative 'spec_helper'

RSpec.describe Parser do
<<<<<<< HEAD
  context 'given string array' do
    it { expect(described_class.new(['1.1', '2.2', '3.3']).call).to eq([1.1, 2.2, 3.3]) }
=======
  context 'given string array' do
    it { expect(described_class.new(['1.1', '2.2', '3.3']).call).to eq([1.1, 2.2, 3.3]) }
>>>>>>> naming of spec files fixed
  end
end