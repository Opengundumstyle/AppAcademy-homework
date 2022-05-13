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
 # Dominant Octopus
 def logNSort(arr)

     arr.merge_sort

 end



 