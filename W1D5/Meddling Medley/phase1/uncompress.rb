# Write a method uncompress that accepts a string as an argument. 
# The string will be formatted so every letter is followed by a number. 
# The method should return an "uncompressed" version of the string where every 
# letter is repeated multiple times given based on the number that appears directly
#  after the letter.

def uncompress(str)
    uncompressedStr = ""
   str.each_char.with_index do |char,i|
       freeStr = free(char,str[i+1])
       uncompressedStr += freeStr
       i += 1
   end
    uncompressedStr
end

def free(char,strNum)
    num  = strNum.to_i
    freeStr =""
    num.times{freeStr += char}
    return freeStr
end

puts uncompress('a2b4c1') # 'aabbbbc'
puts uncompress('b1o2t1') # 'boot'
puts uncompress('x3y1x2z4') # 'xxxyxxzzzz'