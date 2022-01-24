#  Given an n x n array, output the elements in a clockwise order in a new single array.

#  Should work for any size n x n array, but will start with 3 x 3

#  get n from size of elements in first sub-array.  increment counter until nth or last element

#  pushing <<, first element using 'shift'
#  first element will push in order, last element will push in reverse order

  # each thru elements, with counter to output into result

  # first element will push out in order, and last element will push out in reverse order

  array_in4 = [
          [1, 2, 3, 4],
          [4, 5, 6, 7],
          [4, 5, 6, 7],
          [7, 8, 9, 0]
      ]

  array_in = [
          [1, 2, 3],
          [4, 5, 6],
          [7, 8, 9]
      ]

def snail(input)
  # create empty result array
  result = []
  n = input.size
  input.each_with_index do |elem,index|
    if index == 0
      elem.each do |val|
        result << val
      end
      input.shift
    end

    # if index == 1
      result << elem.pop
    # end

    if index == n - 1
      elem.reverse.each do |val|
        result << val
      end
      input.pop
    end
  end

  input.each_with_index do |elem,index|  # if 3x3:
    if index == 1
      elem.each do |val|
        result << val
      end
    end
  end

  p result
  p input
end

snail(array_in)
# p snail(array_in)
