class PigLatinizer

   def piglatinize(word)
      arr=word.split("")
      constants=are_constants(word)[0]
      count=are_constants(word)[1]
      init_letter=arr[0]
      if  is_constant?(init_letter)
          count.times do
            arr.shift
          end
        arr=arr + constants
        arr.push("a","y")
      else
        arr.push("w","a","y")
      end
      arr.join("")

   end
   def is_constant?(letter)
      ! letter.match(/[aeiouAEIOU]/) ? true : false
   end
   def are_constants(word)
     count=0
     constants=[]
     word.split("").each do |letter|
        is_constant?(letter) ? constants << letter : break
        count+=1
     end
     [constants,count]
   end
   def to_pig_latin(sentence)
     sentence.split(" ").map { |word|  piglatinize(word)}.join(" ")
   end
end
