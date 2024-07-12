def decimal_conversion(num)
    sum = 0
    binary =  num.to_s
    len = binary.length - 1
    arr = binary.split("")
    
    for i in arr
        int = i.to_i
        dec = int * (2 ** len)
         sum += dec
         len -=1
    end
    puts sum
end
decimal_conversion(1010)
