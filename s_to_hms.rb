def seconds_to_hms(s)
    seconds = s % 60
    min = s / 60
    minutes = min % 60
    hours = min / 60
    days = hours / 24
    return "#{days}:#{hours}:#{minutes}:#{seconds}"
end


def time_to_s(str)
    times = str.split(/[hms]/).map{|x|x.to_i}
    n = times.length
    ans = 0 
     if n == 2 
        if !str.include? "h"
            ans = times[0]*60 + times[1]
        elsif !str.include? "m"
            ans = times[0] * 3600 + times[1]
        else 
            ans = ((times[0] * 60 + times[1]) * 60)
        end
    elsif n == 1
        if str.include? "h"
           ans = times[0] * 3600
        elsif str.include? "m"
            ans = times[0] * 60
        else
            ans = times[0]
        end
     else
        ans = ((times[0]*60 + times[1]) * 60) + times[2]
    end
    ans
end
time("1h15m27s")

def time_sort(arr)
    arr.sort_by{|x|time_to_s(x)}
end
time_sort(["2m5s", "2m17s", "17m8s", "5m32s", "4m46s", "8m27s", "1m55s", "1m22s", "2m3s", "57s"])   

