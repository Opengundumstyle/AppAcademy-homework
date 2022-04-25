def my_map(arr,&block)
    newArr = []
   arr.each {|ele| newArr << block.call(ele)}
   newArr
end

def my_select(arr,&block)
    newArr =[]
    arr.each {|ele| newArr << ele if block.call(ele)}
    newArr
end


def my_count(array, &block)
    count = 0
    array.each {|ele| count += 1 if block.call(ele)}
    count 
end

def my_any?(array,&block)
      array.each {|ele| return true if block.call(ele)}

      false
end


def my_all?(array,&block)
     array.each {|ele| return false unless block.call(ele)}
     true
end

def my_none?(arr,&block)
      arr.each {|ele| return false if block.call(ele)}
      true
end


