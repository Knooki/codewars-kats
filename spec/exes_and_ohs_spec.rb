require_relative '../exes_and_ohs'
require_relative 'spec_helper.rb'

RSpec.describe Solution do
  let(:sol) do
    Solution.new("xxOo")
  end

  context "given string" do
  it { expect(sol.call()).to eq(true)}
  end

end
