require "byebug"

# palindrome ****************************************************

def palindrome?(str)
reverseStr = ""
i = str.length - 1
    while i >= 0
        reverseStr += str[i]
        i -= 1
    end

    return true if reverseStr == str

    false
end



#substring ********************************************************

# def substrings(str)
#     subArr = []
#     strArr = str.split('')

#     strArr.each_index do |i|

#         strStack = ''
#         subArr << strArr[i]
#     debugger
#          strArr[i+1...-1].each_index do |j|
#             strStack += strArr[j]
#             subStr = strArr[i] + strStack
#             subArr << subStr
#          end
#     end

#     subArr


# def substrings(str)
#         subArr = []
      
       
#         (0... str.length ).each do |i|
        
#            (i...str.length).each do |j|
               
#                 subArr << str[i..j]

#             end
           
#         end
         
#        subArr
#   end

def substrings(str)
    subArr = []
   str.each_char.with_index do |char,i|
     (i...str.length).each do |j|
             subArr << str[i..j]
       end
     end
   subArr
end

# palindrome_subsString *********************************

def palindrome_substrings(str)
 
     subArr = substrings(str)
     subArr.select {|subStr| palindrome?(subStr) && subStr.length > 1}
end

    
