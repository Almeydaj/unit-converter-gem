require "unit_converter"

describe UnitConverter do


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
