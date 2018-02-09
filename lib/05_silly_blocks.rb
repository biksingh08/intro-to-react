def reverser
    words = yield.split(" ")
    result = []
    i = 0
    while i < words.length
        result << words[i].reverse
        i += 1
    end
    result.join(" ")
end

def adder(num = 1)
  yield + num
end

def repeater(x = 0)
  if x == 0
    return yield
  else
    x.times do |y|
      yield
    end
  end
end
