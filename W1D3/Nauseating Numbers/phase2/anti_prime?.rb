# Write a method anti_prime? that accepts a number as an argument. 
# The method should return true if the given number has more divisors than all 
# positive numbers less than the given number. For example, 24 is an anti-prime 
# because it has more divisors than any positive number less than 24.  
#  Math Fact: Numbers that meet this criteria are also known as highly composite numbers.

def anti_prime?(num)
    (1...num).each do |n|
      return false if factorCount(n) > factorCount(num)
    end
     true
end

def factorCount(n)

    (1..n).count {|i| n % i == 0}

end


p anti_prime?(24)   # true
p anti_prime?(36)   # true
p anti_prime?(48)   # true
p anti_prime?(360)  # true
p anti_prime?(1260) # true
p anti_prime?(27)   # false
p anti_prime?(5)    # false
p anti_prime?(100)  # false
p anti_prime?(136)  # false
p anti_prime?(1024) # false