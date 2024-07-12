def count_repetition(arr)
    n = arr.length
    repetitions = {}
    for i in arr
        count = 0
        for j in 0 .. n-1
            if  i ==  arr[j] 
               count += 1
              repetitions[i] = count
            end   
        end
    end
    repetitions
end
    count_repetition([1,2,2,4,5,5,5])
    