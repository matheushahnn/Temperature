require 'interfaces/temperature'

class FahrenheitTemperature < TemperatureInterface
  def initialize(temperature)
    @temp = temperature
  end

  def to_celsius
    value = ((@temp - 32.0) * 5.0 / 9.0).round(2)
    "#{value}°C"
  end

  def to_kelvin
    value = (((@temp - 32.0) * 5.0 / 9.0) + 273.15).round(2)
    "#{value}K"
  end

  def to_fahrenheit
    "#{@temp}°F"
  end
end
