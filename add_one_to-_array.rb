def add_one_to_array(arr)
    len = arr.length-1

    while 0 < len
        if arr[len] == 9
            arr[len] = 0
            len -= 1
        else
            
        break if arr[len] += 1
        end
    end
    if arr[0] == 9
        arr[0] = 0
        arr.unshift(1)
    end
    arr
end
add_one_to_array([5,8,3])