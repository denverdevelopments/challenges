# Best ver, reworked/dry up

def getMinimumCost(arr)
  diff = 0
  spot = 0
  total = 0

  arr.each_with_index do |n, i|
    # while i != (arr.size-2) ## NO
    if i  < (arr.length-1)
      # diff ||= [diff, (n-arr[i+1]).abs].max
      if diff < (n-arr[i+1]).abs
        diff = (n-arr[i+1]).abs
        spot = i
      end
    end
  end

  new_num = [arr[spot], arr[spot+1]].min + (diff/2).to_i
  arr.insert((spot+1), new_num)

  arr.each_with_index do |n, i|
    total += (arr[i]-arr[i+1])**2 if i < (arr.length-1)
  end
  p total
end

arr = [1, 3, 5, 2, 10]  ##sum = 49
getMinimumCost(arr)

# arr = [4, 7, 1, 4]
# getMinimumCost(arr)
