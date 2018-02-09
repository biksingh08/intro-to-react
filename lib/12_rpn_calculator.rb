class RPNCalculator
  attr_accessor :calculator

  def initialize
    @calculator = []
  end

  def push(num)
    @calculator << num
  end

  def value
    @value
  end

  def plus
    raise "calculator is empty" if @calculator.empty?
    @last_num = @calculator.pop
    @calculator[-1] += @last_num
    @value = @calculator[-1]
  end

  def minus
    raise "calculator is empty" if @calculator.empty?
    @last_num = @calculator.pop
    @calculator[-1] -= @last_num
    @value = @calculator[-1]
  end

  def divide
    raise "calculator is empty" if @calculator.empty?
    @last_num = @calculator.pop
    @calculator[-1] = @calculator.last.to_f / @last_num
    @value = @calculator[-1]
  end

  def times
    raise "calculator is empty" if @calculator.empty?
    @last_num = @calculator.pop.to_f
    @calculator[-1] = @calculator.last.to_f * @last_num
    @value = @calculator[-1]
  end

  def tokens(x)
    arr = []
    x.split.each do |y|
      if y[/\d+/]
        arr << y.to_i
      elsif y[/(\+|\-|\*|\/)/]
        arr << y.to_sym
      end
    end
    arr
  end

  def evaluate(x)
    tokens(x).each do |value|
      if value.kind_of?(Integer)
        push(value)
      elsif value.kind_of?(Symbol)
        plus if value == :+
        minus if value == :-
        times if value == :*
        divide if value == :/
      end
    end
    @value
  end
end
