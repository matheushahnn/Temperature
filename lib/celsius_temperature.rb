require 'interfaces/temperature'

class CelsiusTemperature < TemperatureInterface
  def initialize(temperature)
    @temp = temperature
  end

  def to_celsius
    "#{@temp}°C"
  end

  def to_kelvin
    kelvin = @temp + 273.15
    "#{kelvin}K"
  end

  def to_fahrenheit
    fahrenheit = (((@temp * 9.0) / 5.0) + 32.0)
    "#{fahrenheit}°F"
  end
end
