class TemperatureInterface
  def initialize(temperature)
    @value = @temp = temperature
  end

  def to_celsius
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def to_kelvin
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def to_fahrenheit
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def display
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
