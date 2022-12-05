require 'converter'

class Temperature
  def initialize(temperature)
    unless valid?(temperature)
      raise "Invalid temperature #{temperature}, please give in the right format. e.g.: 10°C, 72°F or 274K"
    end

    @value = temperature.scan(/-?[0-9]*[.]?[0-9]+/).first.to_f
    @symbol = temperature.scan(/[C|FK]/).first.to_s
  end

  def valid?(temperature)
    temperature.match?(/[0-9]+(°C|°F)|[0-9]+K/)
  end

  def converter
    @converter ||= Converter.for(@symbol, @value)
  end

  def to_celsius
    converter.to_celsius
  end

  def to_kelvin
    converter.to_kelvin
  end

  def to_fahrenheit
    converter.to_fahrenheit
  end

  def display
    @symbol == 'K' ? "#{@value}#{@symbol}" : "#{@value}°#{@symbol}"
  end
end
