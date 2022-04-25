# Write a method triplet_true? that accepts a string as an argument and returns a 
# boolean indicating whether or not the string contains three of the same character 
# consecutively.

def triplet_true(str)
    tripCount = 0
    currCount = 0
    currChar = str[0]
    str.each_char do |char|
        if currChar == char
              currCount += 1
              tripCount = currCount
              return true if tripCount == 3
        else
             currChar = char
             currCount = 1
        end
    end
  
  false
   
end


p triplet_true('caaabb')        # true
p triplet_true('terrrrrible')   # true
p triplet_true('runninggg')     # true
p triplet_true('bootcamp')      # false
p triplet_true('e')             # false