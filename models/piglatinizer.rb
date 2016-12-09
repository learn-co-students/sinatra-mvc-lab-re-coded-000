class PigLatinizer
  def piglatinize(word)
    non_pig_latin_words = ["me", "to", "too", "on","up"]
    if non_pig_latin_words.include? word
      return word
    end
    if word[-2,2]=="ay"
      return "ay"+word
    end
    first=word[0]
    word[0]=''
    second=word[0] ? word[0] : ''
    rest='ay'
    if %w(a e i o u).include?(first.downcase)
       rest= 'way'
       word=first+word
       first=''
    end
    if ((first+second).downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count==2)
      first=first+second
      word[0]=''
    end
    word+first+rest
  end
  def to_pig_latin(words)
    words=words.split(" ")
    words.map{|word| piglatinize(word)}.join(" ")
  end
end
