
def multiply(num)
    table = []
    for int in 1..10
        table << "#{num} * #{int} = #{num * int}"
    end
    table
end
multiply(8)

