def miniMaxSum(arr)
    # Write your code here
    sum = []
  min_arr = arr.min_by(4).sum
  sum << min_arr
  max_arr = arr.max_by(4).sum
  sum << max_arr

end
miniMaxSum([1,3,5,7,9])