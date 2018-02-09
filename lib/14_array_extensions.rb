class Array
  def sum
    total = 0
    self.each do |x|
        total += x
    end
    return total
  end

  def square
    self.map{|x| x * x}
  end

  def square!
    self.map!{|x| x * x}
  end
end
