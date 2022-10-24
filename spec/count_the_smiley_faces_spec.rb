# frozen_string_literal: true

require_relative '../count_the_smiley_faces'

RSpec.describe Counter do
  let(:counter) do
    Counter.new([':D', ':~)', ';~D', ':)', ':O'])
  end

  context 'given string array' do
    it { expect(counter.call).to eq(4) }
  end
end
