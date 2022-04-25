# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"
def largest_prime_factor(num)
    return false if num < 2

    i = num
   while i >= 2
   if num % i == 0 && (2...i).none? {|num| i % num == 0}
       return i
   end
   i -= 1
   end
   
end

def unique_chars?(str)
     uniqueHash = Hash.new(0)
     str.each_char do |char|
        uniqueHash[char] += 1
        return false if uniqueHash[char] > 1
     end
     
     true
end

def dupe_indices(arr)
    #dupeHash = {}
    dupeHash = Hash.new{|key,value| key[value] = []}
   
    arr.each_with_index do |char, i|
         dupeHash[char] << i
    end

    # dupeHash.select {|key, value| value.length > 1}
    dupeHash.each do |key,value|
        if value.length == 1
            dupeHash.delete(key)
        end
    end
    dupeHash
end


def ana_array(arr_1,arr_2)
    hash_1 = collectHash(arr_1)
    hash_2 = collectHash(arr_2)
    
    return false if hash_1.length != hash_2.length

    hash_1.each do |key,value|
        if value != hash_2[key] || hash_2[key] == nil
            return false
        end
    end
    
    return true
end

def collectHash(arr)
    finalHash = Hash.new(0)
   arr.each do |el| 
      finalHash[el] += 1
   end
   return finalHash
end