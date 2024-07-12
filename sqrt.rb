def sqrt(num)
    low = 0
    high = num
    
    while low < high
        mid = (high + low) / 2
        mid_sq = mid * mid
        if mid * mid  == num
            return mid
        elsif mid * mid < num
            low = mid + 1
        else
            high = mid + 1
        end
        "#{num} is not a perfect square."
    end
end
sqrt(25)