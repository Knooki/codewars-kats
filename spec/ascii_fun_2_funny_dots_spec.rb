# frozen_string_literal: true

require_relative '../ascii_fun_2_funny_dots'
require_relative 'spec_helper'

RSpec.describe ASCIIFun2FunnyDots do
  context 'when given width and height' do
    it {
      expect(described_class.new(3,
                                 2).call).to eq("+---+---+---+\n| o | o | o |\n+---+---+---+\n| o | o | o |\n+---+---+---+")
    }
  end
end
