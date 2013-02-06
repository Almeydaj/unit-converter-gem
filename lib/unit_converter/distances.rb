module UnitConverter
  class Distances 
    include UnitConverter::Math
    def self.feet_to_meters(feet, precision=2)
      exact = feet * 0.3048
      round_to_precision(exact, precision)
    end

    def self.meters_to_feet(meters, precision=2)
      exact = meters * 3.28084
      round_to_precision(exact, precision)
    end
  end
end

