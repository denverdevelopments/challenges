# def getMinimumCost(arr)
#   index1 = -1
#   index2 = 0
#   big_diff = 0
#   here = 0

#   (arr.length - 1).times do
#     index1 += 1
#     index2 += 1
#     diff = (arr[index1] - arr[index2]).abs
#     if diff > big_diff
#       big_diff = diff
#       here = index2
#     end
#   end

#   new_num = [arr[here-1],arr[here]].min + (big_diff/2).to_i
#   arr.insert(here,new_num)
#   p arr.length

#   ind1 = -1
#   ind2 = 0
#   total = 0
#   (arr.length - 1).times do
#     ind1 += 1
#     ind2 += 1
#     total += (arr[ind1] - arr[ind2])**2
#   end
#   p total
# end

# arr = [1, 3, 5, 2, 10]  ##sum = 49
# getMinimumCost(arr)

def getMinimumCost(arr)

  arr.each_with_index(n, i)
    while i != arr.size
      # big ||= [big, abs(arr[i]-arr[i+1])].max
      if big < abs(arr[i]-arr[i+1])
        big = abs(arr[i]-arr[i+1])
        spot = i
      end
    end
  end

end


# arr = [4, 7, 1, 4]
# getMinimumCost(arr)
