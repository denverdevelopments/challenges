# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
  hash = Hash.new
  nums.each_with_index do |item,index|
    # diff = target - item
    # if nums.uniq.length == nums.length
    #   if nums.include?(diff) && item != diff
    #     x = nums.find_index(diff)
    #     hash[index] = item
    #     hash[x] = diff
    #   end
    # elsif
    #   if nums.include?(diff)
    #     hash[index] = item
    #     nums.delete_at(index)
    #     # nums[index].pop
    #     x = nums.find_index(diff) + 1
    #     hash[x] = diff
    #   end
    # end
  end
  p hash.keys
  p nums
end

ary1 = [1,4,5]     # good
ary2 = [3,3]       # good
ary3 = [2,5,5,11]   # good
ary = [2..11]
tar = 10

p ary[0].class
# two_sum(ary,tar)

## SUBMIT -- Time Limit Execeeded
