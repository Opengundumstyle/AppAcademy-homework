# Write a method alternating_vowel that accepts a sentence as an argument. The method should
#  return a new sentence where the words alternate between having their first or last vowel removed.
#   For example:

# the 1st word should be missing its first vowel
# the 2nd word should be missing its last vowel
# the 3rd word should be missing its first vowel
# the 4th word should be missing its last vowel
# ... and so on
# Note that words that contain no vowels should remain unchanged. 
# Vowels are the letters a, e, i, o, u.

def alternating_vowel(sentence)
      senArr = sentence.split(" ")
      newArr =[]
    senArr.each_index do |i|
        if i % 2 == 0
          newArr << removeFirst(senArr[i])
        else
          newArr << removeLast(senArr[i])
        end
    end
     newArr.join(" ")
end

def removeFirst(word)
     vowel ="aeiou"
     newWord = ""
     word.each_char.with_index do |char,i|
          if vowel.include?(char)
             newWord = word[0...i] + word[i+1..-1]
             return newWord
          end
     end
     word
end

def removeLast(word)
    newWord = ""
    vowel ="aeiou"
    i = word.length - 1
    while i >= 0
        if vowel.include?(word[i])
            newWord = word[0...i] + word[i+1..-1]
            return newWord
        end
       i -= 1
    end
     word
end


p alternating_vowel('panthers are great animals') # "pnthers ar grat animls"
p alternating_vowel('running panthers are epic') # "rnning panthrs re epc"
p alternating_vowel('code properly please') # "cde proprly plase"
p alternating_vowel('my forecast predicts rain today') # "my forecst prdicts ran tday"