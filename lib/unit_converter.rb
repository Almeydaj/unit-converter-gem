module UnitConverter
  def self.pounds_to_kilograms(pounds, precision=2)
    exact = pounds * 0.453592
    round_to_precision(exact, precision)
  end

  def self.kilograms_to_pounds(kilograms, precision=2)
    exact = kilograms / 0.453592
    round_to_precision(exact, precision)
  end

  def self.feet_to_meters(feet, precision=2)
    exact = feet * 0.3048
    round_to_precision(exact, precision)
  end

  def self.meters_to_feet(meters, precision=2)
    exact = meters * 3.28084
    round_to_precision(exact, precision)
  end

  def self.liters_to_gallons(liters, precision=2)
    exact = liters * 0.264172
    round_to_precision(exact, precision)
  end

  def self.gallons_to_liters(gallons, precision=2)
    exact = gallons * 3.78541
    round_to_precision(exact, precision)
  end
  
  private
  def self.round_to_precision(num, precision)
    (num * 10**precision).round.to_f / 10**precision
  end
end
