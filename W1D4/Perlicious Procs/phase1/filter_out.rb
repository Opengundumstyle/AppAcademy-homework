# filter_out

# Write a method filter_out that accepts an array and a block as arguments. 
# The method should return a new array where elements of the original array
#  are removed if they return true when given to the block. 
#  Solve this using Array#each.

# def filter_out(array,&block)
#     filterArr = []
#     array.each do |num|
#         filterArr << num if !block.call(num)
#     end
#     filterArr
# end

def filter_out(arr, &block)
    newArr = []
    arr.each do |el|
        newArr << el unless block.call(el)
    end
    newArr
end


p filter_out([10, 6, 3, 2, 5 ]) { |x| x.odd? }      # [10, 6, 2]
p filter_out([1, 7, 3, 5 ]) { |x| x.odd? }          # []
p filter_out([10, 6, 3, 2, 5 ]) { |x| x.even? }     # [3, 5]
p filter_out([1, 7, 3, 5 ]) { |x| x.even? }         # [1, 7, 3, 5]