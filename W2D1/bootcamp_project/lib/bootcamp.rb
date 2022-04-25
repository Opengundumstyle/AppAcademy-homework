class Bootcamp
    def initialize(name,slogan,student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @students = []
        @teachers = []
        @grades = Hash.new{|k,v| k[v] = []}
    end
     
    def name 
        @name
    end
    
    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(teacher)
        @teachers.push(teacher)
    end

    def enroll(student)

        if @students.length  < @student_capacity
             @students << student
             true
        else
            false

        end
       
    end

   def enrolled?(student)
        return true if @students.include?(student)
        false
   end


end
