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

# arr = [4, 7, 1, 4]
# getMinimumCost(arr)

# r = 0
# dir = -1
# (r +=222 && r += 310) if dir == -1
# p r
