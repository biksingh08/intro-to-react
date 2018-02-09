def latinize(word)
  vowels = "aeiou"
  if word.include?("squ")
  word = word[3..-1] + word[0] + "qu"
  elsif word.include?("qu")
    word = word[2..-1] + word[0] + "u"
  else
    until vowels.include?(word[0].downcase)
      word = word[1..-1] + word[0]
    end
  end
  word + "ay"
end

def translate(sentence)
  words = sentence.split
  words.map! {|word| latinize(word)}
  return words.join(" ")
end
