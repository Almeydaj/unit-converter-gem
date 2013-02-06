module UnitConverter
  module Math
    def self.included(other)
      def other.round_to_precision(num, precision)
        (num * 10**precision).round.to_f / 10**precision
      end
    end
  end
end
