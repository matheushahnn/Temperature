require 'celsius_temperature'
require 'kelvin_temperature'
require 'fahrenheit_temperature'

class Temperature
  def initialize(temperature)
    unless valid?(temperature.to_s)
      raise "Invalid temperature #{temperature}, please give in the right format. e.g.: 10°C, 72°F or 274K"
    end

    if temperature.include?('K')
      temp = temperature.split('K')[0].to_f
      @type = KelvinTemperature.new(temp)
      return
    else
      numbers = temperature.split('°')
      symbol = numbers[1].to_s
      temp = numbers[0].to_f
    end

    case symbol
    when 'C'
      @type = CelsiusTemperature.new(temp)
    when 'F'
      @type = FahrenheitTemperature.new(temp)
    end
  end

  def valid?(temperature)
    temperature.match?(/[0-9]+(°C|°F)|[0-9]+K/)
  end

  def to_celsius
    @type.to_celsius
  end

  def to_kelvin
    @type.to_kelvin
  end

  def to_fahrenheit
    @type.to_fahrenheit
  end
end
