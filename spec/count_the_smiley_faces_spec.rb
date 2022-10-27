# frozen_string_literal: true

require_relative '../count_the_smiley_faces'

RSpec.describe CountTheSmileyFaces do
  context 'given string array' do
<<<<<<< HEAD
<<<<<<< HEAD
    it { expect(described_class.new([':D', ':~)', ';~D', 'x)', ':O']).call).to eq(3) }
=======
    it { expect(described_class.new([':D', ':~)', ';~D', ':)', ':O']).call).to eq(4) }
>>>>>>> Done
=======
    it { expect(described_class.new([':D', ':~)', ';~D', 'x)', ':O']).call).to eq(3) }
>>>>>>> naming fixed
  end
end
