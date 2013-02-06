require "unit_converter"
require "roundable_spec"

describe UnitConverter::Weights do
  it_behaves_like "roundable"

  context "pounds to kg" do
    it "without explicit precision, defaults to 2 decimals" do
      kilograms = UnitConverter::Weights.pounds_to_kilograms(10)
      kilograms.should eq 4.54 
      kilograms = UnitConverter::Weights.pounds_to_kilograms(24)
      kilograms.should eq 10.89
    end

    it "converts with explicit precision" do
      kilograms = UnitConverter::Weights.pounds_to_kilograms(10, 3)
      kilograms.should eq 4.536
      kilograms = UnitConverter::Weights.pounds_to_kilograms(24, 3)
      kilograms.should eq 10.886
    end
  end

  context "kg to pounds" do
    it "without explicit precision, defaults to 2 decimals" do
      pounds = UnitConverter::Weights.kilograms_to_pounds(10)
      pounds.should eq 22.05
      pounds = UnitConverter::Weights.kilograms_to_pounds(12)
      pounds.should eq 26.46
    end

    it "converts with explicit precision" do
      pounds = UnitConverter::Weights.kilograms_to_pounds(10, 3)
      pounds.should eq 22.046
      pounds = UnitConverter::Weights.kilograms_to_pounds(12, 3)
      pounds.should eq 26.455
    end
  end

  context "pounds to ounces" do
    it "without explicit precision, defaults to 2 decimals" do
      ounces = UnitConverter::Weights.pounds_to_ounces(10)
      ounces.should eq 160
      ounces = UnitConverter::Weights.pounds_to_ounces(12)
      ounces.should eq 192
    end

    it "converts with explicit precision" do
      ounces = UnitConverter::Weights.pounds_to_ounces(10, 3)
      ounces.should eq 160
      ounces = UnitConverter::Weights.pounds_to_ounces(12, 3)
      ounces.should eq 192
    end
  end
  
end