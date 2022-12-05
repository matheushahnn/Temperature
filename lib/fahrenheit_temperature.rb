require 'interfaces/temperature'

class FahrenheitTemperature < TemperatureInterface
  def to_celsius
    value = ((@temp - 32.0) * 5.0 / 9.0).round(2)
    Temperature.new("#{value}°C")
  end

  def to_kelvin
    value = (((@temp - 32.0) * 5.0 / 9.0) + 273.15).round(2)
    Temperature.new("#{value}K")
  end

  def to_fahrenheit
    Temperature.new("#{@temp}°F")
  end
end
