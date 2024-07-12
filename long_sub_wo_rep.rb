def longest_substring(str)
    chars = str.chars
    l = chars.length
    subs = []
    
    for i in 0...l
      arr = []
       j = i 
       loop do
            if !arr.include? chars[j]
              arr << chars[j]
              j += 1
              break if arr.include? chars[j]
            end
          end
          str = arr.join
          subs << str  
    end
    max_len = subs.map{|x| x.length}.max
    ans = subs.select{|x| x.length == max_len}
    puts ans
end
longest_substring("potato")

