shared_examples_for "roundable" do
  it "rounds numbers to a given precision" do
    number = described_class.round_to_precision(10.23456, 3)
    number.should eq 10.235
  end
end
