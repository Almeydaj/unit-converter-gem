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

  context "feet to meters" do
    it "without explicit precision, defaults to 2 decimals" do
      meters = UnitConverter.feet_to_meters(10)
      meters.should eq 3.05
      meters = UnitConverter.feet_to_meters(12)
      meters.should eq 3.66
    end

    it "converts with explicit precision" do
      meters = UnitConverter.feet_to_meters(10, 3)
      meters.should eq 3.048
      meters = UnitConverter.feet_to_meters(12, 3)
      meters.should eq 3.658
    end
  end

  context "meters to feet" do
    it "without explicit precision, defaults to 2 decimals" do
      feet = UnitConverter.meters_to_feet(10)
      feet.should eq 32.81
      feet = UnitConverter.meters_to_feet(12)
      feet.should eq 39.37
    end

    it "converts with explicit precision" do
      feet = UnitConverter.meters_to_feet(10, 3)
      feet.should eq 32.808
      feet = UnitConverter.meters_to_feet(12, 3)
      feet.should eq 39.370
    end
  end

  context "liters to gallons" do
    it "without explicit precision, default to 2 decimals" do
      gallons = UnitConverter.liters_to_gallons(10)
      gallons.should eq 2.64
      gallons = UnitConverter.liters_to_gallons(12)
      gallons.should eq 3.17
    end

  end

end
