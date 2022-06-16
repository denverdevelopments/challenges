# @param {String} s
# @return {Integer}
def roman_to_int(s)
  .upcase
  .count('IV')


end

  # hash = Hash.new
  # nums.each_with_index do |item,index|
  #   diff = target - nums.pop
  #   if nums.include?(diff)
  #     hash[index] = item
  #     hash[nums.find_index(diff)+1] = diff
  #   end
  # end
  # p hash.keys
  # p nums

# p two_sum(ary,tar)

#1.  Read string by letter form left to right (array.shift)
    # s.upcase
    #push back into new array after evaluating
#2.  Check if next letter is bigger, for subtraction
    #OR adjust for each of 6 special cases. -2 IV and IX, -20 XL XC, -200 CD CM
#3.  Add correct value to total (start at 0)

#4.  Repeat eval process, add new value to total

#5.  Stop after last array entry, return total
