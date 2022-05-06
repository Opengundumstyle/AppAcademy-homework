class Stack
    def initialize(n)
      # create ivar to store stack here!
      @stackArr = Array.new(n)

    end

    def push(el)
      # adds an element to the stack
          @stackArr << el

    end

    def pop
      # removes one element from the stack
           @stackArr.pop 
         
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
            @stackArr[self.length - 1]

    end

  end



  class Queue

    def initialize(n)
        # create ivar to store stack here!
        @queue = Array.new(n)

    end

    def enqueue(el)
        @queue << el

    end


    def dequeue
        @queue.shift
    end


    def peek
         @queue[self.length -1]
    end

  end


  class 


  end