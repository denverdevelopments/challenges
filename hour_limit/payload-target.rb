# take an array of integers as input and a target integer, to return an array of either the two #s in the payload that total the target, or an empty array.

# chose an integer in pl then iterate over the remaining integers to check if sum equals target

#  make sure the integer is not added to itself, suggests that it may be removed from pl.

# possibly 'each' method to iterate thru all elements, or method with indexing

# takes first element
  payload first value

#




# find_target([1, 3, 4, 5, 10], 15)
# => [5, 10]
# find_target([-1, -3, 4, 7, -5, 18, 10, -23, 5], 15)
# => [-3, 18]
# find_target([-3, -34, 2, 6, 40, -4], 1)
# => []

def find_pair(pl, target)
  # find size of pl and work with index directly
  # entries = pl.size

  # counter = 1
  # until counter == entries - 1

  # pl.size > 1
  result = []

  until pl.size == 1
    # val = pl.first
    # pl.shift
    val = pl.shift  #maybe need separate first
    pl.each do |n|
      sum = val + n
      if sum == target
        result << val
        result << n
        # result << val  # refactor to single push?
        return result
      end
    end
  end

  # pl.each_with_index do |n, i|
  #   counter = 1
  #   sum = n + pl[i+counter]
  #   if sum == target
  #     result << n
  #     result << n2  # refactor to single push?
  #     return result
  #   end
  #   counter += 1

  result
end

pl = [-1, -3, 4, 7, -5, 18, 10, -23, 5]  #[1, 3, 4, 5, 10]
target = 15
# => [5, 10]

p find_pair(pl, target)
# p result
