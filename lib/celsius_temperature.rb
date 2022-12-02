require 'interfaces/temperature'
require 'temperature'

class CelsiusTemperature < TemperatureInterface
  def initialize(temperature)
    super(temperature)
  end

  def to_celsius
    Temperature.new("#{@temp}°C")
  end

  def to_kelvin
    @value = @temp + 273.15
    Temperature.new("#{@value}K")
  end

  def to_fahrenheit
    @value = (((@temp * 9.0) / 5.0) + 32.0)
    Temperature.new("#{@value}°F")
  end

  def display
    "#{@value}°C"
  end
end
