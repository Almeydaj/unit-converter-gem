require "unit_converter"

describe UnitConverter do
  it "converts pounds to kilograms" do
    a = UnitConverter.convert(10, :pounds, :kilograms)
    a.should eq 4.54
  end

  it "converts celsius to kelvin" do
    a = UnitConverter.convert(10, :celsius, :kelvin)
    a.should eq 283.15
  end

  it "converts celsius to fahrenheit" do
    a = UnitConverter.convert(0, :celsius, :fahrenheit)
    a.should eq 32
  end

  it "throws an UnknownConversionError if it gets confused" do
    expect{UnitConverter.convert(10, :derp, :kilograms)}
      .to raise_error(UnitConverter::UnknownConversionError)
  end
end
