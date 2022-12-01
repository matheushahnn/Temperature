class TemperatureInterface
  def celsius
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def kelvin
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def fahrenheit
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
