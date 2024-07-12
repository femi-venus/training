#fibonacci series
def fibs(n)
    seq = [0,1]
    return seq if n <= 1
    seq << seq[-1] + seq[-2]
    fibs(n - 1)
    
end
fibs(15)


#fibonacci number
def fib(n)
    return n if n <= 1
    return fib(n - 1) + fib(n - 2)
end
fib(15)
