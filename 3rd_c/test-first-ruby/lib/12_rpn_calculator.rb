class RPNCalculator

  attr_accessor :numbers, :value

  def initialize
    @numbers = []
  end

  def push(item)
    @numbers << item
  end

  def value
    @value
  end

  def plus
    raise 'calculator is empty' if @numbers[-1] == nil
    @value = @numbers.pop + @numbers.pop
    @numbers << @value
  end

  def minus
    raise 'calculator is empty' if @numbers[-1] == nil
    @value = @numbers[-2]- @numbers[-1]
    @numbers.pop
    @numbers.pop
    @numbers << @value
  end

  def divide
    raise 'calculator is empty' if @numbers[-1] == nil
    @value = @numbers[-2].to_f/ @numbers[-1].to_f
    @numbers.pop
    @numbers.pop
    @numbers << @value
  end

  def times
    raise 'calculator is empty' if @numbers[-1] == nil
    @value = @numbers.pop.to_f * @numbers.pop.to_f
    @numbers << @value
  end

  def tokens(values)
    values.split.map{|item| item.match(/[0-9]/) ? item.to_i : item.to_sym}
  end

  def evaluate(values)
    a_values = tokens(values)

    a_values.each do |item|
      case item
      when :+
        plus
      when :-
        minus
      when :*
        times
      when :/
        divide
      else
        @numbers << item
      end
    end
    @value
  end

end
