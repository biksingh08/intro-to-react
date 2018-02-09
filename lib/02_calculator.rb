def add(n1,n2)
  return n1 + n2
end

def subtract(n1,n2)
  return n1 - n2
end

def sum(arr)
  if arr.reduce(:+) == nil
    return 0
  else return arr.reduce(:+)
  end
end

def multiply(arr)
  return arr.reduce(:*)
end

def power(number, power)
  i = 1
  sum = 0
  while i < power
    sum += number * number
    i += 1
  end
  return sum
end

def factorial(num)
  result = 1
  if num == 0
    return 0
  elsif num == 1
    return 1
  end
  while num > 1
    result = result * num
    num -= 1
  end
  return result
end
