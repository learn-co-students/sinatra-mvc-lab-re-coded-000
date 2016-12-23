class PigLatinizer

  def piglatinize(word)
  i=0
  word1=word.split("")
  if !word1.first.match(/[aeiou]|[AEIOU]/)
    while !word1[i].match(/[aeiou]|[AEIOU]/)
    p=word1.shift
    word1<<p
  end
  word1<<"ay"
    word=word1.join("")
  elsif word1.first.match(/[aeiou]|[AEIOU]/)
  word=word1<<"way"
  word.join("")
  end

end
def to_pig_latin(string)
string_to_array=string.split(" ")
array2=string_to_array.collect {|word| piglatinize(word)}
array2.join(" ")
end
end

p = PigLatinizer.new
