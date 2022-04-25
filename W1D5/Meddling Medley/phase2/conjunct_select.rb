# conjunct_select

# Write a method conjunct_select that accepts an array and one or more procs as arguments. 
# The method should return a new array containing the elements that return true when passed 
# into all of the given procs

def conjunct_select(arr, *procs)
      newArr = []
      arr.each do |ele|
           countTru = 0
         procs.each do |newProc|
            
           countTru += 1 if newProc.call(ele)

         end

        tempt = countTru
        newArr << ele if tempt == procs.length 
      end

    newArr

end


# def conjunct_select(arr, *procs)
#       newArr = []
#       arr.each do |ele|
#          newArr << ele  if procs.all? {|prc| prc.call(ele)}
#         end

#     newArr

# end


is_positive = Proc.new { |n| n > 0 }
is_odd = Proc.new { |n| n.odd? }
less_than_ten = Proc.new { |n| n < 10 }

p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive) # [4, 8, 11, 7, 13]
p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd) # [11, 7, 13]
p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd, less_than_ten) # [7]