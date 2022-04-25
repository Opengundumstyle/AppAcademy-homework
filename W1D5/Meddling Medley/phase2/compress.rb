# Write a method compress that accepts a string as an argument. 
# The method should return a "compressed" version of the string where streaks 
# of consecutive letters are translated to a single appearance of the letter 
# followed by the number of times it appears in the streak. If a letter does not 
# form a streak (meaning that it appears alone), then do not add a number after it.


def compress(str)  # compress('aabbbbc')   # "a2b4c"

  repeatStr = ""
 
  str.each_char.with_index do |char,i|
    countRepeat = 0 
    currChar = str[i]
    while currChar == str[i]
        countRepeat += 1 # 2
        i += 1 #2
    end

      if countRepeat > 1
        repeatStr += currChar + countRepeat.to_s
      else
         repeatStr += currChar
      end

  end
        return repeatStr
   
end


# def compress(str)  # compress('aabbbbc')   # "a2b4c"

#     repeatStr = ""
#     i = 0
#     while i < str.length
#       countRepeat = 0 
#       currChar = str[i]
#       while currChar == str[i]
#           countRepeat += 1 # 2
#           i += 1 #2
#       end
  
#         if countRepeat > 1
#           repeatStr += currChar + countRepeat.to_s
#         else
#            repeatStr += currChar
#         end
  
#     end
#           return repeatStr
     
#   end
p compress('aabbbbc')   # "a2b4c"
p compress('boot')      # "bo2t"
p compress('xxxyxxzzzz')# "x3yx2z4"