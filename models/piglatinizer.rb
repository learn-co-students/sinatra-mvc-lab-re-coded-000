class PigLatinizer

  def piglatinize(word)
    if !(word.downcase.match(/^[aeiou]/) == nil) then #the word starts with a vowel
      pig_word = word+"way"
    else          #please => easeplay
      v_letter = word.split("").find {|char| char.downcase.match(/[aeiou]/)}
      part1 = word.split(/[aeiou].*/)   #"please" => ["pl"]
      part2 = word.scan(/[aeiou].*/)    #"please" => ["ease"]
      pig_word = part2[0] + part1[0] + "ay"
    end
  end
  def to_pig_latin(sentence)
    sentence.split(" ").map {|word|
      piglatinize(word)
    }.join(" ")
  end
end
