require_relative '../parser'
require_relative 'spec_helper.rb'

RSpec.describe Parser do
  let(:parser) do
    Parser.new(["1.1","2.2","3.3"])
  end

  context "given string array" do
  it { expect(parser.call()).to eq([1.1, 2.2, 3.3])}
  end

end
