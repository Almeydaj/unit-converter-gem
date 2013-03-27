require "unit_converter"

describe UnitConverter do
  context "weights" do
    it "converts pounds to kilograms" do
      a = UnitConverter.convert(10, :pounds, :kilograms)
      a.should eq 4.54
    end

    it "converts pounds to grams" do
      a = UnitConverter.convert(20, :pounds, :grams)
      a.should eq 9071.94
    end

    it "converts pounds to ounces" do
      a = UnitConverter.convert(10, :pounds, :ounces)
      a.should eq 160
    end

    it "converts kilograms to pounds" do
      a = UnitConverter.convert(4.54, :kilograms, :pounds)
      a.should eq 10.01
    end

    it "converts kilograms to grams" do
      a = UnitConverter.convert(0.5, :kilograms, :grams)
      a.should eq 500.0
    end

    it "converts kilograms to ounces" do
      a = UnitConverter.convert(20, :kilograms, :ounces)
      a.should eq 705.48
    end

    it "converts grams to kilograms" do
      a = UnitConverter.convert(500, :grams, :kilograms)
      a.should eq 0.5
    end

    it "converts grams to pounds" do
      a = UnitConverter.convert(9071.94, :grams, :pounds)
      a.should eq 20.0
    end

    it "converts grams to ounces" do
      a = UnitConverter.convert(300.05, :grams, :ounces)
      a.should eq 10.58
    end

    it "converts ounces to kilograms" do
      a = UnitConverter.convert(754.86, :ounces, :kilograms)
      a.should eq 21.40
    end

    it "converts ounces to pounds" do
      a = UnitConverter.convert(160, :ounces, :pounds)
      a.should eq 10
    end

    it "converts ounces to grams" do
      a = UnitConverter.convert(10.58, :ounces, :grams)
      a.should eq 299.94
    end
  end

  context "temperatures" do
    it "converts celsius to kelvin" do
      a = UnitConverter.convert(40.33, :celsius, :kelvin)
      a.should eq 313.48
    end

    it "converts celsius to fahrenheit" do
      a = UnitConverter.convert(40.33, :celsius, :fahrenheit)
      a.should eq 104.59
    end

    it "converts kelvin to celsius" do
      a = UnitConverter.convert(313.48, :kelvin, :celsius)
      a.should eq 40.33
    end

    it "converts kelvin to fahrenheit" do
      a = UnitConverter.convert(584.75, :kelvin, :fahrenheit)
      a.should eq 592.88
    end

    it "converts fahreinheit to celsius" do
      a = UnitConverter.convert(104.59, :fahrenheit, :celsius)
      a.should eq 40.33
    end

    it "converts fahrenheit to kelvin" do
      a = UnitConverter.convert(592.88, :fahrenheit, :kelvin)
      a.should eq 584.75
    end
  end

  context "distances" do
    it "converts feet to meters" do
      a = UnitConverter.convert(45.08, :feet, :meters)
      a.should eq 13.74
    end

    it "converts feet to miles" do
      a = UnitConverter.convert(15000, :feet, :miles)
      a.should eq 2.84
    end

    it "converts feet to kilometers" do
      a = UnitConverter.convert(15000, :feet, :kilometers)
      a.should eq 4.57
    end

    it "converts feet to yards" do
      a = UnitConverter.convert(15000, :feet, :yards)
      a.should eq 5000
    end

    it "converts meters to feet" do
      a = UnitConverter.convert(13.74, :meters, :feet)
      a.should eq 45.08
    end

    it "converts meters to miles" do
      a = UnitConverter.convert(2560, :meters, :miles)
      a.should eq 1.59
    end

    it "converts meters to kilometers" do
      a = UnitConverter.convert(2560, :meters, :kilometers)
      a.should eq 2.56
    end

    it "converts meters to yards" do
      a = UnitConverter.convert(2560, :meters, :yards)
      a.should eq 2799.64
    end

    it "converts miles to feet" do
      a = UnitConverter.convert(3.50, :miles, :feet)
      a.should eq 18480
    end

    it "converts miles to meters" do
      a = UnitConverter.convert(3.50, :miles, :meters)
      a.should eq 5632.69
    end

    it "converts miles to kilometers" do
      a = UnitConverter.convert(3.50, :miles, :kilometers)
      a.should eq 5.63
    end

    it "converts miles to yards" do
      a = UnitConverter.convert(3.50, :miles, :yards)
      a.should eq 6160
    end

    it "converts kilometers to feet" do
      a = UnitConverter.convert(3.50, :kilometers, :feet)
      a.should eq 11482.94
    end

    it "converts kilometers to meters" do
      a = UnitConverter.convert(3.50, :kilometers, :meters)
      a.should eq 3500
    end

    it "converts kilometers to miles" do
      a = UnitConverter.convert(3.50, :kilometers, :miles)
      a.should eq 2.17
    end

    it "converts kilometers to yards" do
      a = UnitConverter.convert(3.50, :kilometers, :yards)
      a.should eq 3827.64
    end

    it "converts yards to feet" do
      a = UnitConverter.convert(350.75, :yards, :feet)
      a.should eq 1052.25
    end

    it "converts yards to meters" do
      a = UnitConverter.convert(350.75, :yards, :meters)
      a.should eq 320.73
    end

    it "converts yards to miles" do
      a = UnitConverter.convert(360.75, :yards, :miles)
      a.should eq 0.20
    end

    it "converts yards to yards" do
      a = UnitConverter.convert(360.75, :yards, :kilometers)
      a.should eq 0.33
    end
  end

  context "volumes" do
    it "converts liters to gallons" do
      a = UnitConverter.convert(45.08, :liters, :gallons)
      a.should eq 11.91
    end

    it "converts liters to quarts" do
      a = UnitConverter.convert(45.08, :liters, :quarts)
      a.should eq 47.64
    end

    it "converts gallons to quarts" do
      a = UnitConverter.convert(45.08, :gallons, :quarts)
      a.should eq 180.32
    end

    it "converts gallons to liters" do
      a = UnitConverter.convert(45.08, :gallons, :liters)
      a.should eq 170.65
    end

    it "converts quarts to liters" do
      a = UnitConverter.convert(45.08, :quarts, :liters)
      a.should eq 42.66
    end

    it "converts liters to gallons" do
      a = UnitConverter.convert(45.08, :liters, :gallons)
      a.should eq 11.91
    end
  end

  it "throws an UnknownConversionError if it gets confused" do
    expect{UnitConverter.convert(10, :derp, :kilograms)}
      .to raise_error(UnitConverter::UnknownConversionError)
  end
end

