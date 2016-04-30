def translate(sentence)
  vowels = ["a", "e", "i", "o", "u"]
  words = sentence.split
  answer = []
  words.each do |word|
    capitalized = capitalized? word # keeps track whether is this word capitalized
    word.downcase!
    word = word.split("")
    until vowels.include? word[0] do # shifts until there is a vowel
      unless word[0] == "q" && word[1] == "u" # handles a phonome qu
        word.push(word.shift)
      else
        2.times { word.push(word.shift) }
      end
    end
    word.push("ay")
    word = word.join
    word.capitalize! if capitalized
    answer.push(word)
  end
  answer.join(" ")
end

def capitalized?(word)
  cap = word.capitalize
  cap == word
end
