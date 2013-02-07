require "unit_converter"
require "roundable_spec"

describe UnitConverter::Temperatures do
  it_behaves_like "roundable"
  context "kelvin to celsius" do
    it "without explicit precision, default to 2 decimals" do
      celsius = UnitConverter::Temperatures.kelvin_to_celsius(273.15)
      celsius.should eq 0.00
      celsius = UnitConverter::Temperatures.kelvin_to_celsius(300.00)
      celsius.should eq 26.85
    end

    it "converts with explicit precision" do
      celsius = UnitConverter::Temperatures.kelvin_to_celsius(273.15, 3)
      celsius.should eq 0.000
      celsius = UnitConverter::Temperatures.kelvin_to_celsius(300.00, 3)
      celsius.should eq 26.850
    end
  end

 context "celsius to kelvin" do
    it "without explicit precision, default to 2 decimals" do
      kelvin = UnitConverter::Temperatures.celsius_to_kelvin(0.00)
      kelvin.should eq 273.15
      kelvin = UnitConverter::Temperatures.celsius_to_kelvin(26.85)
      kelvin.should eq 300.00
    end

    it "converts with explicit precision" do
      kelvin = UnitConverter::Temperatures.celsius_to_kelvin(0.00, 3)
      kelvin.should eq 273.150
      kelvin = UnitConverter::Temperatures.celsius_to_kelvin(26.85, 3)
      kelvin.should eq 300.000
    end
  end

  context "kelvin to fahrenheit" do
    it "without explicit precision, default to 2 decimals" do
      fahrenheit = UnitConverter::Temperatures.kelvin_to_fahrenheit(273.15)
      fahrenheit.should eq 32.00
      fahrenheit = UnitConverter::Temperatures.kelvin_to_fahrenheit(300.00)
      fahrenheit.should eq 80.33
    end

    it "converts with explicit precision" do
      fahrenheit = UnitConverter::Temperatures.kelvin_to_fahrenheit(273.15, 3)
      fahrenheit.should eq 32.000
      fahrenheit = UnitConverter::Temperatures.kelvin_to_fahrenheit(300.00, 3)
      fahrenheit.should eq 80.330
    end
  end

  context "fahrenheit to kelvin" do
    it "without explicit precision, default to 2 decimals" do
      kelvin = UnitConverter::Temperatures.fahrenheit_to_kelvin(32.00)
      kelvin.should eq 273.15
      kelvin = UnitConverter::Temperatures.fahrenheit_to_kelvin(80.33)
      kelvin.should eq 300.00
    end

    it "converts with explicit precision" do
      kelvin = UnitConverter::Temperatures.fahrenheit_to_kelvin(32.00, 3)
      kelvin.should eq 273.150
      kelvin = UnitConverter::Temperatures.fahrenheit_to_kelvin(80.33, 3)
      kelvin.should eq 300.000
    end
  end

  context "fahrenheit to celsius" do
    it "without explicit precision, default to 2 decimals" do
      celsius = UnitConverter::Temperatures.fahrenheit_to_celsius(32.00)
      celsius.should eq 0.00
      celsius = UnitConverter::Temperatures.fahrenheit_to_celsius(80.33)
      celsius.should eq 26.85
    end

    it "converts with explicit precision" do
      celsius = UnitConverter::Temperatures.fahrenheit_to_celsius(32.00, 3)
      celsius.should eq 0.000
      celsius = UnitConverter::Temperatures.fahrenheit_to_celsius(80.33, 3)
      celsius.should eq 26.850
    end
  end

 context "celsius to fahrenheit" do
    it "without explicit precision, default to 2 decimals" do
      fahrenheit = UnitConverter::Temperatures.celsius_to_fahrenheit(0.00)
      fahrenheit.should eq 32.00
      fahrenheit = UnitConverter::Temperatures.celsius_to_fahrenheit(26.85)
      fahrenheit.should eq 80.33
    end

    it "converts with explicit precision" do
      fahrenheit = UnitConverter::Temperatures.celsius_to_fahrenheit(0.00, 3)
      fahrenheit.should eq 32.000
      fahrenheit = UnitConverter::Temperatures.celsius_to_fahrenheit(26.85, 3)
      fahrenheit.should eq 80.330
    end
  end
end
