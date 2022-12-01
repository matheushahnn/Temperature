require 'interfaces/temperature'

class KelvinTemperature < TemperatureInterface
  def initialize(temperature)
    @temp = temperature
  end

  def to_celsius
    value = (@temp - 273.15).round(2)
    "#{value}°C"
  end

  def to_kelvin
    "#{@temp}K"
  end

  def to_fahrenheit
    value = (((@temp - 273.15) * 9.0 / 5.0) + 32).round(2)
    "#{value}°F"
  end
end
