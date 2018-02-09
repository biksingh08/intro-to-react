class Book
  attr_accessor :title

  def title= (string) # virtual attribute
    words = string.split(" ")
    short_words = %w[and in a an the or of if]
    words.map do |word|
        word.capitalize! unless short_words.include?(word)
    end
    words[0].capitalize!
    @title = words.join(" ")
  end
end
