# proctition

# Write a method proctition that accepts an array and a block as arguments.
#  The method should return a new array where the elements that return true when given t
#  o the block come before all of the elements that return false when given to the block. 
#  This means that the new array has two partitions; the order among elements in the same 
#  partition should be the same as their relative order in the input array.

# def proctition(array,&block)
#     leftArr = []
#     rightArr = []
#     array.each do |el|
    
#     if block.call(el)
#         leftArr << el
#     else
#         rightArr << el  
#     end
# end
#     leftArr + rightArr

# end

def proctition(arr, &block)
    falseArr = []
     truArr = []
     arr.each do |el|
        if block.call(el)
            truArr << el 
        else
            falseArr << el
        end
        
     end

        truArr + falseArr
    
end






p proctition([4, -5, 7, -10, -2, 1, 3]) { |el| el > 0 }
# [4, 7, 1, 3, -5, -10, -2]

p proctition([7, 8, 3, 6, 10]) { |el| el.even? }
# [8, 6, 10, 7, 3]

p proctition(['cat','boot', 'dog', 'bug', 'boat']) { |s| s[0] == 'b' }
# ["boot", "bug", "boat", "cat", "dog"]