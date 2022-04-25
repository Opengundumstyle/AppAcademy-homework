require "byebug"

# def is_prime?(num)

#    return false if num < 2

#    (2...num).each do |i|
#       return false if num % i == 0
#    end

#    true
# end

# def nth_prime(n)
#    countNum = 0
#    num = 1
#    while countNum < n
#      countNum += 1 if is_prime?(num)
#      return num if countNum == n
#      num += 1
#    end
   
# end

# def prime_range(min,max)
#    primeArr = []
#    (min..max).each do |num|
#      if is_prime?(num)
#         primeArr << num
#      end

#    end
#    primeArr
# end


def is_prime?(num)
    return false if num < 2

   (2 ... num).each do |i|
      
      return false if num % i == 0
   end
  true
end


def nth_prime(n)
     countN = 0
     i = 1
     while countN != n
         i += 1
        countN +=1 if is_prime?(i)
     end
    i
end


def prime_range(min,max)
      (min..max).select {|ele| is_prime?(ele)}
end