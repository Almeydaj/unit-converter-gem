module UnitConverter
  class Temperatures
    include UnitConverter::Math
    def self.kelvin_to_fahrenheit(kelvin, precision=2)
      exact = (kelvin * 9.0 / 5.0) - 459.67
      round_to_precision(exact, precision)
    end

    def self.fahrenheit_to_kelvin(fahrenheit, precision=2)
      exact = (fahrenheit + 459.67) * 5.0 / 9.0
      round_to_precision(exact, precision)
    end

    def self.fahrenheit_to_celsius(fahrenheit, precision=2)
      exact = (fahrenheit - 32) * 5.0 / 9.0
      round_to_precision(exact, precision)
    end

    def self.celsius_to_fahrenheit(celsius, precision=2)
      exact = (celsius * 9.0 / 5.0) + 32
      round_to_precision(exact, precision)
    end

  end
end
