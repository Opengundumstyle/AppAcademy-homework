require "byebug"
# zip *******************************************************

# def zip(*array)
#    finalArr = []
#   (0...array[0].length).each do |i|
#     tempArr = []
#        array.each do |el|
#            tempArr << el[i]
#        end
#          iterateArr = tempArr
#           finalArr << iterateArr
#   end

#   finalArr

# end


def zip(*arrs)
   width = arrs[0].length 
   height = arrs.length

   finalArr = []
   
  (0...width).each do |i|
       emptyArr = []
    (0...height).each do |j|
      
       emptyArr << arrs[j][i] 
       
    end
       temp = emptyArr
       finalArr << temp
  end

      finalArr
end

# #pizz_proc******************************************************

# # def prizz_proc(arr,proc_1,proc_2)
# #   newArr = []
# #   arr.each do|el|
# #    if proc_1.call(el) != proc_2.call(el)
# #      newArr << el
# #    end
# #   end
# #    newArr
# # end


def prizz_proc(arr,prc1,prc2)
   arr.select {|el| prc1.call(el) != prc2.call(el)}
end



#zany_zip***********************************************************
# def zany_zip(*arrs)
#     finalArr = []
#     longlength = 0
#     arrs.each do |arr|
#       longlength = arr.length if longlength < arr.length
#     end
    
#     (0...longlength).each do |i|
#        tempArr = []
#         arrs.each do |arr|

#             tempArr << arr[i]
            
#         end
#          iterateArr = tempArr
#           finalArr << iterateArr
#     end
#        finalArr
# end

def zany_zip(*arrs)
    width = 0
    zanyArr = []
   arrs.each do |arr|
      width = arr.length if arr.length > width
   end

   (0...width).each do |i|
      emptyArr = []
    (0...arrs.length).each do |j|
          emptyArr << arrs[j][i]
    end
      temp = emptyArr
      zanyArr << temp
   end

   zanyArr
   
end




#maximum************************************************************
# def maximum(arr, &block)
#     largeBlock = arr[0]
    
#     arr.each do |el|
#       procCall = block.call(el)
#       if procCall >= block.call(largeBlock)
#         largeBlock = el
#       end
#     end
    
#     largeBlock

# end



def maximum(arr,&block)
     finalEle = arr[0]
      arr.each do |el|
          finalEle = el if block.call(finalEle) <= block.call(el)
      end
   finalEle
end


#my_group_by********************************************************
# def my_group_by(array,&block)
#      makeHash  = {}
#      array.each do |ele|
#       blockResult = block.call(ele)
#      if makeHash[blockResult] != nil
#           makeHash[blockResult] << ele
#      else
#          makeHash[blockResult] = [ele]
#      end

#      end
#      makeHash

# end

def my_group_by(arr,&block)
    newHash = Hash.new{|k,v| k[v] = []}

    arr.each do |ele|
      key = block.call(ele)
      newHash[key] << ele 
  end
    newHash
end


#max_tie_breaker ******************************************************
# def max_tie_breaker(array,proC,&block)
#       finalEle = array[0]
#       array.each do |ele|
#         blockCall = block.call(ele)
#         if blockCall > block.call(finalEle)
#           finalEle = ele
#         elsif  blockCall == block.call(finalEle)
#              procCall = proC.call(ele)
#              finalEle = ele if procCall > proC.call(finalEle)
              
#         end
#       end

#        finalEle
# end
def max_tie_breaker(arr,prc,&block)
     max = arr.first
     arr.each do |el|
        if block.call(el) > block.call(max)
              max = el
        elsif block.call(el) == block.call(max)
             if  prc.call(el) > block.call(max)
                 max = el
             end
        end
     end
     max
end

#silly_syllables ******************************************************
# def silly_syllables(sentence)
#      wordsArr = sentence.split(' ')
#      newArr =[]
#      wordsArr.each do |word|
#          newArr << removeLetters(word) 
       
#      end
#      newArr.join(" ")
# end

# def removeLetters(word)

#     vowels ="aeiou"
#     leftindex = 0
#     rightindex = word.length - 1
#      vowelcount = false

#     while leftindex < word.length
#       if vowels.include?(word[leftindex])
#         vowelcount = true
#         break
#       end
#        leftindex += 1 
#     end

#    return word if vowelcount == false
       
    
#     while rightindex >= 0
#       break if vowels.include?(word[rightindex])
#       rightindex -= 1
#    end
  
#   if leftindex == rightindex 
#        return word 
#   else
#        return word[leftindex..rightindex]
#   end
  
# end


def silly_syllables(sentence)
    senArr = sentence.split(' ')
    senArr.map!{|word| removed(word)}

    senArr.join(' ')
end

def removed(word)
   vowel = "aeiou"
  
   firstVidx = 0
   lastVidx = word.length - 1
   while firstVidx < word.length #- 1 
        if vowel.include?(word[firstVidx])
            break
        end
        firstVidx += 1
   end

  return word if firstVidx == word.length 
  
  while lastVidx >= 0 
    if vowel.include?(word[lastVidx])
        break
    end
     lastVidx -= 1
end


if lastVidx == firstVidx
  return word 
else
  return word[firstVidx..lastVidx]
end



end