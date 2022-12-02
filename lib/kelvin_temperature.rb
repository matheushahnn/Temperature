require 'interfaces/temperature'

class KelvinTemperature < TemperatureInterface
  def initialize(temperature)
    super(temperature)
  end

  def to_celsius
    @value = (@temp - 273.15).round(2)
    Temperature.new("#{@value}°C")
  end

  def to_kelvin
    Temperature.new("#{@temp}K")
  end

  def to_fahrenheit
    @value = (((@temp - 273.15) * 9.0 / 5.0) + 32).round(2)
    Temperature.new("#{@value}°F")
  end

  def display
    "#{@value}K"
  end
end
