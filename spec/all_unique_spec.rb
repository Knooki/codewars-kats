require_relative '../all_unique.rb'

RSpec.describe Solution do
  let(:solution) do
    Solution.new("abcdef")
  end

  context "given string array" do
  it { expect(solution.call()).to eq(true)}
  end
end
