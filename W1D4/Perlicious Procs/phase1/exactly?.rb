# exactly?

# Write a method exactly? that accepts an array, a number (n), and a block as
#  arguments. The method should return a boolean indicating whether or not there 
#  are exactly n elements that return true when given to the block. Solve this 
#  using Array#each.

# def exactly?(arr,num,&block)
#     countru = 0
    
#     arr.each do |ele|
#         countru += 1 if block.call(ele)
#     end

#     return true if num == countru

#     false
    
# end

def exactly?(arr,n, &block)
      countAll = 0
      arr.each {|el| countAll += 1 if block.call(el)}

      if countAll == n
        return true
      else
        false
      end
   
    end



p exactly?(['A', 'b', 'C'], 2) { |el| el == el.upcase }         # true
p exactly?(['A', 'B', 'C'], 2) { |el| el == el.upcase }         # false
p exactly?(['A', 'B', 'C'], 3) { |el| el == el.upcase }         # true
p exactly?(['cat', 'DOG', 'bird'], 1) { |el| el == el.upcase }  # true
p exactly?(['cat', 'DOG', 'bird'], 0) { |el| el == el.upcase }  # false
p exactly?(['cat', 'dog', 'bird'], 0) { |el| el == el.upcase }  # true
p exactly?([4, 5], 3) { |n| n > 0 }                             # false
p exactly?([4, 5, 2], 3) { |n| n > 0 }                          # true
p exactly?([42, -9, 7, -3, -6], 2) { |n| n > 0 }                # true