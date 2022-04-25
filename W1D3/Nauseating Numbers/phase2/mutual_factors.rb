# Write a method mutual_factors that accepts any amount of numbers as arguments. 
# The method should return an array containing all of the common divisors shared among 
# the arguments. For example, the common divisors of 50 and 30 are [1, 2, 5, 10]. 
# You can assume that all of the arguments are positive integers.

def mutual_factors(*eles)
    commonFactor = getfactor(eles[0])

     eles.each do |ele|
         factorArr = getfactor(ele)
        commonFactor = commonFactor.select{|el| factorArr.include?(el)}
     end
    
     commonFactor

end

def getfactor(num)

    factArr = []

    (1..num).each do |n|
       factArr << n if num % n  == 0
    end

   factArr

end

p mutual_factors(50, 30)            # [1, 2, 5, 10]
p mutual_factors(50, 30, 45, 105)   # [1, 5]
p mutual_factors(8, 4)              # [1, 2, 4]
p mutual_factors(8, 4, 10)          # [1, 2]
p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
p mutual_factors(12, 24, 64)        # [1, 2, 4]
p mutual_factors(22, 44)            # [1, 2, 11, 22]
p mutual_factors(22, 44, 11)        # [1, 11]
p mutual_factors(7)                 # [1, 7]
p mutual_factors(7, 9)              # [1]