def average(num1,num2)
    (num1 + num2)*1.0 / 2
end

def average_array(nums)
  nums.sum * 1.0 / nums.length
end

def repeat(str,num)
     finalStr = ""
     
    num.times { finalStr += str }

    finalStr
end

def yell(str)
   str.upcase + "!"
  
end

# def alternating_case(str)
#     strArr = str.split(" ")
#     flip = 1
    
#     strArr.map do |word|
#         if flip == 1 
#             word.upcase!
#             flip = 0
#         else
#             word.downcase!
#             flip = 1
#         end
#     end
    
#     strArr.join(" ")
    
# end

def alternating_case(str)
    strArr = str.split(" ")

        strArr.each_index do |i|
            if i % 2 == 0 
                strArr[i] = strArr[i].upcase 
            else
                strArr[i] = strArr[i].downcase 
            end
        end
    
    strArr.join(" ")
    
end