def select_even_nums(arr)
   arr.select {|ele| ele % 2 == 0}
end

def reject_puppies(hashArr)
    hashArr.reject {|dog| dog["age"] <= 2 }
end


def count_positive_subarrays(arrs)
   arrs.count {|arr| arr.sum > 0} 
end


def aba_translate(str)
    newStr = ""
    vowel= "aeiou"
    str.each_char do |char|
        if vowel.include?(char)
            newStr += char + "b" + char
        else
            newStr += char
        end
     end
 newStr
end


def aba_array(wordArr)
     wordArr.map {|word| aba_translate(word)}
end


