# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
#Part 1
#span 
  def span
       smallest = self[0]
       largest = self[0]

      self.each do |el|
           if smallest > el
             smallest = el
           end

           if largest < el
            largest = el
           end
      end

     return largest - smallest if self.length > 0 
     
     nil

    end

#average
   def average
      return self.sum * 1.0 / self.length if self != []

      nil
   end

#median

 def median
    return nil if self.length == 0

    self.sort!

    if self.length % 2 == 0
         leftidx = self.length / 2 - 1 
         rightidx = self.length / 2 
         
         return self[leftidx .. rightidx].sum * 1.0 / 2
    else

        mid = self.length / 2

        return self[mid]

    end

 end
#counts
def counts
   newHash = Hash.new(0)
    self.each do |el|
        newHash[el] += 1
    end

    newHash
end

#*****************************************************************

# Part 2











  end



