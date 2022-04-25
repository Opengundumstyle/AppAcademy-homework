require "byebug"

def hipsterfy(word)
    vowel ="aeiou"
  i = word.length - 1
  while i >= 0
     if vowel.include?(word[i])
        return word[0...i] + word[i+1..-1]
     end
     i -= 1
  end 

  word

end


def vowel_counts(str)
    vowel = "aeiouAEIOU"
     vowelHash = Hash.new(0)
     str.each_char do |char|
        newkey = char.downcase
         vowelHash[newkey] += 1 if vowel.include?(char)
     end

     vowelHash
end


def caesar_cipher(message,n)
    alphabet = ("a".."z").to_a
    
    newMessage = ""

    message.each_char do |char|
        if !alphabet.include?(char)
            newMessage += char
        else
           oldIdx = alphabet.index(char)
           newChar = alphabet[(oldIdx + n) % 26]
           newMessage += newChar
        end
    end

   newMessage
   
end