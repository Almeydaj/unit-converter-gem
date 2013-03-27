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
    meters: lambda { |x| x * 0.3048 },
    miles: lambda { |x| x * 0.000189394 },
    kilometers: lambda { |x| x * 0.0003048 },
    yards: lambda { |x| x * 0.333333 }
  },

  meters: {
    feet: lambda { |x| x * 3.28084 },
    miles: lambda { |x| x * 0.000621371 },
    kilometers: lambda { |x| x * 0.001 },
    yards: lambda { |x| x * 1.09361 }
  },

  miles: {
    feet: lambda { |x| x * 5280 },
    meters: lambda { |x| x * 1609.34 },
    kilometers: lambda { |x| x * 1.60934 },
    yards: lambda { |x| x * 1760 }
  },

  kilometers: {
    feet: lambda { |x| x * 3280.84 },
    meters: lambda { |x| x * 1000 },
    miles: lambda { |x| x * 0.621371 },
    yards: lambda { |x| x * 1093.61 }
  },

  yards: {
    feet: lambda { |x| x * 3 },
    meters: lambda { |x| x * 0.9144 },
    miles: lambda { |x| x * 0.000568182 },
    kilometers: lambda { |x| x * 0.0009144 }
  },

  liters: {
    gallons: lambda { |x| x * 0.264172 },
    quarts: lambda { |x| x * 1.05669 }
  },

  gallons: {
    liters: lambda { |x| x * 3.78541 },
    quarts: lambda { |x| x * 4 }
  },

  quarts: {
    liters: lambda { |x| x * 0.946353 },
    gallons: lambda { |x| x * 0.25 }
  }
}
