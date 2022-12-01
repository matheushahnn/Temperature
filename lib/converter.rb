require 'celsius_temperature'
require 'kelvin_temperature'
require 'fahrenheit_temperature'

class Converter
  def self.for(symbol, temp)
    case symbol
    when 'C'
      CelsiusTemperature.new(temp)
    when 'K'
      KelvinTemperature.new(temp)
    when 'F'
      FahrenheitTemperature.new(temp)
    end
  end
end
