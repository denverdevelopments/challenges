A1 = [1, 2, 4, 5, 8]
A2 = [2, 3, 5, 7, 9]
A3 = [1, 2, 5, 8, 9]

def find_matches(nums1, nums2, nums3)
  common12 = []
  final =[]

  nums1.each do |num|
    nums2.each do |int|
      common12 << num if num == int
    end
  end

    # nums2.each do |int|
    #   common12 = nums1.select do |num|
    #
    #     num == int
    #   end
    # end

      common12.each do |c|
        nums3.each do  |x|
          final.push(c) if c == x
        end
      end

  # return final
end

# def find_matches(nums1, nums2, nums3)
#   nums1.select { |num| nums2.include?(num) && nums3.include?(num)}
# end


p find_matches(A1, A2, A3)
