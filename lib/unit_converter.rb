module UnitConverter
  require "helpers/math"
  require "unit_converter/conversions"
  include UnitConverter::Math
  class UnknownConversionError < StandardError; end

  def self.convert(amount, from_unit, to_unit, precision=2)
    function = find_conversion(from_unit, to_unit) 
    raise UnknownConversionError if !function
    exact = function.call(amount)
    round_to_precision(exact, precision)
  end

  def self.find_conversion(from_unit, to_unit)
    if CONVERSIONS[from_unit]
      function = CONVERSIONS[from_unit][to_unit]
    end
  end
end
