# Write a method pair_product that accepts an array of numbers and a product as arguments. 
# The method should return a boolean indicating whether or not a pair of distinct elements 
# in the array result in the product when multiplied together. 
# You may assume that the input array contains unique elements.

# def pair_product(arr, product)
#     pairHash = {}

#    arr.each do |num|
#      if pairHash[num] 
#         return true
#      else
#         pairHash[product/num] = 1 
#      end
#    end

#     false

# end


def pair_product(arr, product)
     arr.each_index do |i|
         (i+1...arr.length).each do |j|
            return true if arr[i] * arr[j] == product
         end
     end

     false

end





p pair_product([4, 2, 5, 8], 16)    # true
p pair_product([8, 1, 9, 3], 8)     # true
p pair_product([3, 4], 12)          # true
p pair_product([3, 4, 6, 2, 5], 12) # true
p pair_product([4, 2, 5, 7], 16)    # false
p pair_product([8, 4, 9, 3], 8)     # false
p pair_product([3], 12)             # false
p pair_product([3,4,5,6,7], 12)     # true