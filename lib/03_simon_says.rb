def echo(simon)
  return simon
end

def shout(simon)
  i = 0
  result = ""
  while i < simon.length
    if simon[i] == " "
      result += " "
    else
    result += simon[i].capitalize!
  end
    i += 1
  end
  return result
end

def repeat(string,num = 2)
  result = ""
  i = 0
  while i < num
    result += string + " "
    i += 1
  end
  return result.rstrip
end

def start_of_word(string, num)
  result = ""
  i = 0
  while i < num
    result += string[i]
    i += 1
  end
  return result
end

def first_word(string)
  result = string.split
  return result[0]
end

def titleize(string)
  words = string.split(" ")
  short_words = %w[and in a an the or of if over]
  words.map do |word|
      word.capitalize! unless short_words.include?(word)
  end
  words[0].capitalize!
  string = words.join(" ")
  return string
end
