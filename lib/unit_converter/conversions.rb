CONVERSIONS = {
  pounds: {
    kilograms: lambda { |x| x * 0.453592 }
  },
  kilograms: {
    pounds: lambda { |x| x/0.453592 },
    grams: lambda { |x| x * 1000}
  },
  grams: {
    kilograms: lambda { |x| x / 1000}
  },
  celsius: {
    kelvin: lambda { |x| x + 273.15 },
    fahrenheit: lambda { |x| (x*9/5) + 32 }
  },
  kelvin: {
    celsius: lambda{ |x| x - 273.15 }
  }
}
