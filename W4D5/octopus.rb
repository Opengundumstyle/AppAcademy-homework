#Sluggish Octopus

def quatratic(arr)
       
     longlength = arr[0]
      (0...arr.length).each do |i|
         longlength = arr[i] if longlength.length < arr[i].length
      end

     longlength

end

# n log n search
class Array
    #this should look familiar
    def merge_sort(&prc)
      prc ||= Proc.new { |x, y| x <=> y }
  
      return self if count <= 1
  
      midpoint = count / 2
      sorted_left = self.take(midpoint).merge_sort(&prc)
      sorted_right = self.drop(midpoint).merge_sort(&prc)
  
      Array.merge(sorted_left, sorted_right, &prc)
    end
    private
  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end
 end
 # Dominant Octopus
 def logNSort(arr)

     arr.merge_sort

 end



 #clever octopus

def linearSort(arr)
   pivot = arr[0]
   arr.each do |el|
       if pivot > el 
        pivot = el
       end
   end

   pivot

end

#Dancing Octopus
def slow_dance(dircs,tiles)
   tiles.each_index do |i|
       return i if  tiles[i] == dircs
   end

end


