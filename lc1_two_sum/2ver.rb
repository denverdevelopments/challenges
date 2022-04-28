# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
require 'pry'

def two_sum(nums, target)
  hash = Hash.new
  nums.each_with_index do |item,index|
    diff = target - item
    # binding.pry
  if nums.uniq.length == nums.length
      if nums.include?(diff) && item != diff
        x = nums.find_index(diff)
        hash[index] = item
        hash[x] = diff
      end
    elsif
      if nums.include?(diff)
        hash[index] = item
        nums.delete_at(index)
        # nums[index].pop
        x = nums.find_index(diff) + 1
        hash[x] = diff
      end
    end
  end
  p hash.keys
  p nums
end

ary1 = [1,4,5]     # good
ary2 = [3,3]       # good [0,0]
ary = [2,5,5,11]   # good
tar = 6 #10

two_sum(ary2,tar)

## SUBMIT -- Time Limit Execeeded
