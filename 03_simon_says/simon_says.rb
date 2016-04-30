def echo(echoed)
  echoed
end

def shout(shouted)
  shouted.upcase
end

def repeat(repeated, n = 2)
  answer = ""
  n.times do |i|
    answer += repeated
    answer += " " unless i + 1 == n
  end
  answer
end

def start_of_word(word, n)
  word[0..n - 1]
end

def first_word(sentence)
  sentence.split[0]
end


def titleize(sentence)
  little_words = ["and", "over", "the"] # words we do not want capitalized
  words = sentence.split
  words.each do |word|
    word[0] = word[0].upcase unless little_words.include? word
  end
  words[0][0] = words[0][0].upcase # in case a little word is at the start
  words.join(" ")
end
