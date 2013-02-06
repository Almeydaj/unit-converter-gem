require "unit_converter"

describe UnitConverter do

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

    it "converts with explicit precision" do
      gallons = UnitConverter.liters_to_gallons(10, 3)
      gallons.should eq 2.642
      gallons = UnitConverter.liters_to_gallons(12, 3)
      gallons.should eq 3.17
    end
  end

 context "gallons to liters" do
    it "without explicit precision, default to 2 decimals" do
      liters = UnitConverter.gallons_to_liters(10)
      liters.should eq 37.85
      liters = UnitConverter.gallons_to_liters(12)
      liters.should eq 45.42
    end

    it "converts with explicit precision" do
      liters = UnitConverter.gallons_to_liters(10, 3)
      liters.should eq 37.854
      liters = UnitConverter.gallons_to_liters(12, 3)
      liters.should eq 45.425
    end
  end


end
