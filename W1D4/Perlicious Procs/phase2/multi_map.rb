# multi_map

# Write a method multi_map that accepts an array, an optional number (n), 
# and a block as arguments. The method should return a new array where each element 
# of the original array is repeatedly run through the block n times. If the number argument 
# is not passed in, then the the elements should be run through the block once.


# def multi_map(array,n=1,&block)
    
 
#    n.times do |iteration|
#         array.each_index do |i|
#                array[i] = block.call(array[i])
#         end
#    end
    
#    array

# end

def multi_map(arr,n=1,&block)
   newArr = []
       arr.each do |el|
           n.times{
              el = block.call(el)
           }
            newArr.push(el)
       end

    newArr

end


p multi_map(['pretty', 'cool', 'huh?']) { |s| s + '!'}      # ["pretty!", "cool!", "huh?!"]
p multi_map(['pretty', 'cool', 'huh?'], 1) { |s| s + '!'}   # ["pretty!", "cool!", "huh?!"]
p multi_map(['pretty', 'cool', 'huh?'], 3) { |s| s + '!'}   # ["pretty!!!", "cool!!!", "huh?!!!"]
p multi_map([4, 3, 2, 7], 1) { |num| num * 10 }             # [40, 30, 20, 70]
p multi_map([4, 3, 2, 7], 2) { |num| num * 10 }             # [400, 300, 200, 700]
p multi_map([4, 3, 2, 7], 4) { |num| num * 10 }             # [40000, 30000, 20000, 70000]