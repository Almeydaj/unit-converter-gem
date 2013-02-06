require "unit_converter"
require "roundable_spec"

describe UnitConverter::Distances do
  it_behaves_like "roundable"
  context "feet to meters" do
    it "without explicit precision, defaults to 2 decimals" do
      meters = UnitConverter::Distances.feet_to_meters(10)
      meters.should eq 3.05
      meters = UnitConverter::Distances.feet_to_meters(12)
      meters.should eq 3.66
    end

    it "converts with explicit precision" do
      meters = UnitConverter::Distances.feet_to_meters(10, 3)
      meters.should eq 3.048
      meters = UnitConverter::Distances.feet_to_meters(12, 3)
      meters.should eq 3.658
    end
  end

  context "meters to feet" do
    it "without explicit precision, defaults to 2 decimals" do
      feet = UnitConverter::Distances.meters_to_feet(10)
      feet.should eq 32.81
      feet = UnitConverter::Distances.meters_to_feet(12)
      feet.should eq 39.37
    end

    it "converts with explicit precision" do
      feet = UnitConverter::Distances.meters_to_feet(10, 3)
      feet.should eq 32.808
      feet = UnitConverter::Distances.meters_to_feet(12, 3)
      feet.should eq 39.370
    end
  end
end

