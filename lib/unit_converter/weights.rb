module UnitConverter
  class Weights
    include UnitConverter::Math

    def self.pounds_to_ounces(pounds, precision=2)
      exact = pounds * 16
      round_to_precision(exact, precision)
    end
  end
end
