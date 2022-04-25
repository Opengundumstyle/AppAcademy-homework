
# proper_factors *******************************************************
def proper_factors(num)
   newArr = []
  (1...num).each do |ele| 
    newArr << ele if num % ele == 0
  end

  newArr
  
end


# aliquot_sum ***********************************************************
def aliquot_sum(num)
     properArr = proper_factors(num)
     return properArr.sum
end



# perfect_number? *******************************************************
def perfect_number?(num)
   if aliquot_sum(num) == num
     return true
   else
    return false
   end
    
end
#ideal_numbers ******************************************
def ideal_numbers(n)
   idealArr = []
   i = 6
   while idealArr.length  < n
       idealArr << i if perfect_number?(i)
       i += 1 
   end
   idealArr
end
