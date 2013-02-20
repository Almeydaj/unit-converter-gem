CONVERSIONS = {
  pounds: {
    kilograms: lambda { |x| x * 0.453592 },
    grams: lambda { |x| x * 453.597024404 },
    ounces: lambda { |x| x * 16 }
  },

  kilograms: {
    pounds: lambda { |x| x * 2.20462442 },
    grams: lambda { |x| x * 1000 },
    ounces: lambda { |x| x * 35.274 }
  },

  grams: {
    kilograms: lambda { |x| x * 0.001 },
    pounds: lambda { |x| x * 0.0022046 },
    ounces: lambda { |x| x * 0.035274 }
  },

  ounces: {
    kilograms: lambda { |x| x * 0.028349493 },
    pounds: lambda { |x| x * 0.0625 },
    grams: lambda { |x| x * 28.349492544 }
  },

  celsius: {
    kelvin: lambda { |x| x + 273.15 },
    fahrenheit: lambda { |x| (x*9.0/5.0) + 32 }
  },

  kelvin: {
    celsius: lambda { |x| x - 273.15 },
    fahrenheit: lambda { |x| (x*9.0/5.0) - 459.67 }
  },

  fahrenheit: {
    celsius: lambda { |x| (x - 32) * 5.0/9.0 },
    kelvin: lambda { |x| (x + 459.67) * 5.0/9.0 }
  },

  feet: {
    meters: lambda { |x| x * 0.3048 }
  },

  meters: {
    feet: lambda { |x| x * 3.28084 }
  },

  liters: {
    gallons: lambda { |x| x * 0.264172 }
  },

  gallons: {
    liters: lambda { |x| x * 3.78541 }
  }
}
