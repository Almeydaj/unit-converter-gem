require "unit_converter"

describe UnitConverter do
  context "pounds to kg" do
    it "without explicit precision, defaults to 2 decimals" do
      kilograms = UnitConverter.pounds_to_kilograms(10)
      kilograms.should eq 4.54 
      kilograms = UnitConverter.pounds_to_kilograms(24)
      kilograms.should eq 10.89
    end

    it "converts with explicit precision" do
      kilograms = UnitConverter.pounds_to_kilograms(10, 3)
      kilograms.should eq 4.536
      kilograms = UnitConverter.pounds_to_kilograms(24, 3)
      kilograms.should eq 10.886
    end
  end

  context "kg to pounds" do
    it "without explicit precision, defaults to 2 decimals" do
      pounds = UnitConverter.kilograms_to_pounds(10)
      pounds.should eq 22.05
      pounds = UnitConverter.kilograms_to_pounds(12)
      pounds.should eq 26.46
    end

    it "converts with explicit precision" do
      pounds = UnitConverter.kilograms_to_pounds(10, 3)
      pounds.should eq 22.046
      pounds = UnitConverter.kilograms_to_pounds(12, 3)
      pounds.should eq 26.455
    end
  end
end
