class Temperature

  attr_accessor :option

  def initialize(option = {})
    @option = option
  end

  def in_fahrenheit
    @fahrenheit = @option[:f] ? @option[:f] : (((@option[:c]*9.0)/5.0) + 32.0).round
  end

  def in_celsius
    @celsius = @option[:c] ? @option[:c] : (((@option[:f] - 32.0)*5.0)/9.0).round
  end

  def self.from_celsius(celsius)
    new @option = {c: celsius}
  end

  def self.from_fahrenheit(fahrenheit)
    new @option = {f: fahrenheit}
  end

end

class Celsius < Temperature

  def initialize(celsius)
    super(c: celsius)
  end

end

class Fahrenheit < Temperature

  def initialize(fahrenheit)
    super(f: fahrenheit)
  end

end