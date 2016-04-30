class Book
  attr_reader :title
  @@small_words = ["and", "in", "of", "the", "a", "an"]
  def title=(title)
    words = title.split
    words[0].capitalize! # first word is always capitalized
    words.map! do |word|
      unless @@small_words.include? word
        word.capitalize
      else
        word
      end
    end
    @title = words.join(" ")
  end
end
