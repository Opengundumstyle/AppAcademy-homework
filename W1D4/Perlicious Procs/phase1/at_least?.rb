# at_least?

# Write a method at_least? that accepts an array, a number (n), and a block
#  as an arguments. The method should return a boolean indicating whether or
#   not at least n elements of the array return true when given to the block. 
#   Solve this using Array#each.

# def at_least?(array, n, &block)
#     countNum = 0
#     array.each do |ele|
#         countNum += 1 if block.call(ele)
#     end
#     return true if countNum >= n

#     false
# end


def at_least?(arr,n,&block)
    count = 0
    arr.each do |el|
        count += 1 if block.call(el)
        return true if count == n
    end

    false

end








p at_least?(['sad', 'quick', 'timid', 'final'], 2) { |s| s.end_with?('ly') }
# false
p at_least?(['sad', 'quickly', 'timid', 'final'], 2) { |s| s.end_with?('ly') }
# false
p at_least?(['sad', 'quickly', 'timidly', 'final'], 2) { |s| s.end_with?('ly') }
# true
p at_least?(['sad', 'quickly', 'timidly', 'finally'], 2) { |s| s.end_with?('ly') }
# true
p at_least?(['sad', 'quickly', 'timid', 'final'], 1) { |s| s.end_with?('ly') }
# true
p at_least?(['sad', 'quick', 'timid', 'final'], 1) { |s| s.end_with?('ly') }
# false
p at_least?([false, false, false], 3) { |bool| bool }
# false
p at_least?([false, true, true], 3) { |bool| bool }
# false
p at_least?([true, true, true], 3) { |bool| bool }
# true
p at_least?([true, true, true, true], 3) { |bool| bool }
# true