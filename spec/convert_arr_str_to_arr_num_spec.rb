# frozen_string_literal: true

require_relative '../7kats/convert_arr_str_to_arr_num'
require_relative 'spec_helper'

RSpec.describe ConvertArrStrToArrNum do
  context 'when given string array' do
    it { expect(described_class.new(['1.1', '2.2', '3.3']).call).to eq([1.1, 2.2, 3.3]) }
  end
end
