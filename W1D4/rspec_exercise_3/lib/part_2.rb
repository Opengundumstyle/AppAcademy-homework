
#element_count ********************************************


def element_count(arr)
    hash = Hash.new(0)
    arr.each do |el|
       hash[el] += 1
    end

    hash

end

# char_replace!**********************************************


def char_replace!(str, hash)
   
   str.each_char.with_index do |char,i|
       if hash[char]
           str[i] = hash[char]
       end
   end

   str
   
end

# product_inject ***********************************************

def product_inject(arr)
 arr.inject {|acc ,ele| acc * ele}
end