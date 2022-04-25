# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
# def compress_str(str)
#    comStr = ''
#    currChar = str[0]
#    charCount = 0
#    str.each_char do |char|

#    if currChar != char || char == nil
#     if charCount == 1
#     comStr += currChar
#     else
#     comStr += charCount.to_s + currChar
#     currChar = char
#     charCount = 1
#     end
#    else
#       charCount += 1
#    end

#    end

#    comStr
# end

def compress_str(str)
   charCount = 0
   currChar = str[0] # a
   compresStr = ""# 3a
  str.split('').each_index do |i|
    if str[i]== currChar 
        charCount += 1 #3
        
    elsif str[i] != currChar 
        if charCount > 1 
            compresStr += (charCount.to_s + currChar)
        else
            compresStr  += currChar
        
        end
   
         currChar = str[i] # b
         charCount = 1
    end
    
   if str[i+1] == nil
    if charCount > 1 
        compresStr += (charCount.to_s + currChar)
    else
        compresStr  += currChar
    end
    end

  end
     compresStr
end
p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
