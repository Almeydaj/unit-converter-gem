module UnitConverter
  def self.pounds_to_kilograms(pounds, precision=2)
    exact = pounds * 0.453592
    round_to_precision(exact, precision)
  end

  def self.kilograms_to_pounds(kilograms, precision=2)
    exact = kilograms / 0.453592
    round_to_precision(exact, precision)
  end

  private
  def self.round_to_precision(num, precision)
    (num * 10**precision).round.to_f / 10**precision
  end
end
