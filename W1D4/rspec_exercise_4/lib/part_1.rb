
require "byebug"
# my_reject ***********************************************
def my_reject(arr, &block)
     newArr =[]
    arr.each do |el|
         newArr << el unless block.call(el)
    end
    newArr
end

#my_one? **************************************************************

   def my_one?(arr,&block)
       countOne = 0
       arr.each {|el| countOne += 1 if block.call(el)}

       return false if countOne != 1

       true
   end

# hash_select***********************************************************

   def hash_select(hash, &block)
    newHash = {}
       hash.each do |k,v|
          newHash[k] = v if block.call(k,v)
       end
       newHash
   end


# xor_select **********************************************************
  def xor_select(arr,prc1,prc2)
    arr.select {|el| prc1.call(el) != prc2.call(el)}
  end

#proc_count ************************************************************

  def proc_count(value,procs)
     procs.count {|prc| prc.call(value)}
  end






