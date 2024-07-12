
def prime(arr)
   prime_arr = []
  for i in arr
    for j in 2..i-1
      if i % j != 0
        prime_arr << i
      end
    end
  end
  puts prime_arr
end 


  
 

