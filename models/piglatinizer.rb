class PigLatinizer
  #attr_accessor :phrase

  #def initialize
    #@phrase = phrase
  #end
  def piglatinize(text)
  #alpha = ('a'..'z').to_a
  vowels = %w[a e i o u A E I O U]
  #consonants = alpha - vowels
  if vowels.include?(text[0])
     text<<"way"
 elsif !vowels.include?(text[0]) && !vowels.include?(text[1]) && !vowels.include?(text[2])
       text[3..-1]<<text[0..2]<<"ay"
elsif !vowels.include?(text[0]) && !vowels.include?(text[1])
    text[2..-1]<<text[0..1]<<"ay"
elsif !vowels.include?(text[0])
     text[1..-1]<<text[0]<<"ay"
  end
end
def to_pig_latin(sent)
  sent.split.map{|word| piglatinize(word)}.join(" ")
end
end
