# frozen_string_literal: true

require_relative '../count_the_smiley_faces'

RSpec.describe CountTheSmileyFaces do
  context 'given string array' do
    it { expect(described_class.new([':D', ':~)', ';~D', ':)', ':O']).call).to eq(4) }
  end
end
