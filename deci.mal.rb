def decimal_conversion(num)
    
    binary =  num.to_s

    arr = binary.split(".")
    
    num_arr = arr[0].split("")
     len = num_arr.length - 1
     sum = 0
      for i in num_arr
         int = i.to_i
         dec = int * (2 ** len)
         sum += dec
         len -= 1
        end
    if arr[1] == nil
        decimal = sum
    else
        dec_arr = arr[1].split("")
        sumd = 0
        length = dec_arr.length
        for j in dec_arr
             int = j.to_f
             dec = int * (2** -length)
             sumd += dec
             len -= 1
        end
        decimal = sum + sumd
    end
   puts decimal
end
decimal_conversion(1100100)