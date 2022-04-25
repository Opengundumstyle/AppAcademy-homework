def reverser(str,&block) 
     block.call(str.reverse)
end

def word_changer(str,&block)
   senArr = str.split(" ")
   newMap = senArr.map{|word| block.call(word)}
   newMap.join(" ")
end


def greater_proc_value(num,proc_1,proc_2)
    if proc_1.call(num) > proc_2.call(num)
        return proc_1.call(num)
    else   
        return proc_2.call(num)
    end

end


def and_selector(arr, proc_1,proc_2)
    arr.select{|ele| proc_1.call(ele) && proc_2.call(ele)}
end

def alternating_mapper(arr,prc1,prc2)
   altArr =[]
   arr.each_index do |i|
     if i % 2 == 0
        altArr << prc1.call(arr[i])
     else
      
        altArr << prc2.call(arr[i])
   end
end
    altArr
end


