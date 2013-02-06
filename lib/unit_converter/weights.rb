module UnitConverter
  class Weights
    include UnitConverter::Math

    def self.pounds_to_kilograms(pounds, precision=2)
      exact = pounds * 0.453592
      round_to_precision(exact, precision)
    end

    def self.kilograms_to_pounds(kilograms, precision=2)
      exact = kilograms / 0.453592
      round_to_precision(exact, precision)
    end

    def self.pounds_to_ounces(pounds, precision=2)
      exact = pounds * 16
      round_to_precision(exact, precision)
    end
  end
end
