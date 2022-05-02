def getMinimumCost(arr)
  index = -1
  big_diff = 0
  here = 0

  (arr.length - 1).times do
    index += 1
    diff = (arr[index] - arr[index+1]).abs
    if diff > big_diff
      big_diff = diff
      here = index + 1
    end
  end

  new_num = [arr[here-1],arr[here]].min + (big_diff/2).to_i
  arr.insert(here,new_num)
  p arr.length

  ind = -1
  total = 0
  (arr.length - 1).times do
    ind += 1
    total += (arr[ind] - arr[ind+1])**2
  end
  p total
end


arr = [1, 3, 5, 2, 10]  ##sum = 49
getMinimumCost(arr)

# arr = [4, 7, 1, 4]
# getMinimumCost(arr)
