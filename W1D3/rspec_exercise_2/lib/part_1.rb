
# partition() *****************************
 def partition(array, number )

     newArr = Array.new(2){[]}
     
     array.each do |el|
        if number <=  el
            newArr[1] << el 
        else
            newArr[0] << el

        end
     end

      newArr
     
 end
# merge()************************************

def merge(hash1,hash2)
    newHash = {}

    hash1.each do |k,v|

        newHash[k] = v  
        
    end

    hash2.each do |k,v|

       newHash[k] = v

    end

    newHash

  


end
# censor ***********************************************

def censor(sentence,curseArr)
   senArr = sentence.split(" ")
   newArr = []
   senArr.each do |word|
      if curseArr.include?(word.upcase) || curseArr.include?(word.downcase)
          newArr << getAstrick(word)
      else
          newArr << word
      end
   end
   newArr.join(" ")
   
end


def getAstrick(word)
    vowels ="aeiouAEIOU"
    newWord = ""
    word.each_char do |word|
        if vowels.include?(word)
            newWord += "*"
        else
            newWord += word
        end
    end
    newWord
end
# power_of_two ****************************************************************


def power_of_two?(n)
  i = 1

  while i < n 
    i = i * 2 
  end

   i == n 

end