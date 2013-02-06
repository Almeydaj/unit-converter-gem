module UnitConverter
  class Volumes
    include UnitConverter::Math
    def self.liters_to_gallons(liters, precision=2)
      exact = liters * 0.264172
      round_to_precision(exact, precision)
    end

    def self.gallons_to_liters(gallons, precision=2)
      exact = gallons * 3.78541
      round_to_precision(exact, precision)
    end
  end
end