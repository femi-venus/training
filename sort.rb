def sort (arr)
    sorted = false
    while !sorted
    arr.length.times do |i|
            if arr[i] > arr[i+1]
                arr[i], arr [i+1] = arr[i+1],arr[i] 
                sorted = true
            end
             
         end
        end
    arr
end
sort ([8,11,3,5,88,1,37])