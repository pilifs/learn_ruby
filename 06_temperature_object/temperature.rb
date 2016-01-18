class Temperature
attr_accessor :temperature


  def initialize(temperature)
    @temperature = temperature
  end

  def self.in_celsius(temperature)
    new({c: temperature})
  end

  def self.in_fahrenheit(temperature)
    new({f: temperature})
  end

  def to_fahrenheit
    if temperature.has_key?(:f)
      return temperature[:f]
    else
      return temperature[:c] * 9/5 + 32
    end
  end

  def to_celsius
    if temperature.has_key?(:c)
      return temperature[:c]
    else
      return (temperature[:f] - 32) * 5.0 / 9
    end
  end

end

class Celsius < Temperature
  def initialize(temperature)
    @temperature = {c: temperature}
  end
end

class Fahrenheit < Temperature
  def initialize(temperature)
    @temperature = {f: temperature}
  end
end
