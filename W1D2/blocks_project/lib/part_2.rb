require "byebug"


def  all_words_capitalized?(words)
 words.all? {|word| word[0].upcase + word[1..-1].downcase == word}
end

# def no_valid_url?(urls)
# endings = ['.com','.net','.io','.org']
#   urls.none? do |url|
#    endings.any? {|ending| url.end_with?(ending)}
#   end
  
# end


def no_valid_url?(urls)
    endings = ['.com','.net','.io','.org']
      urls.none? do |url|
         endings.any? do |ending|
            compare(url,ending)
      end
    end
end


def compare(url,ending)
       urlArr = url.split('.')
       return true if urlArr[1] == ending[1..-1]
       false
end


def any_passing_students?(stuHashes)
    
       stuHashes.any? do |student|
             gradeSum = student[:grades].sum 

             gradeTaken =  student[:grades].length

             average = gradeSum / gradeTaken

             true if average >= 75
       end
end