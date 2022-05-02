def findRemainingBalls(dir, str)
  remain = []
  ind1 = -1
  size = dir.length
  big_ind = str.find_index(str.max)

# add conditional, if all the direction values are 1, or -1, return a new array of incrementing integers from 0 to (n - 1)

  (size-1).times do
    ind1 += 1
    unless ind1 == 0 && dir[ind1] == -1
      remain << big_ind

      if big_ind == 1 &&
        if  dir[ind1] == dir[big_ind]*-1
        end
      elsif big_ind == -1

      end
    end
    if ind1 == 0 && dir[ind1] == -1
      remain << 0
      dir.shift
    end
    if ind2 == (size-1) && dir[ind2] == 1
      remain << (size -1)
    end
  end

end

dir = [1,-1]
str = [2,1]

findRemainingBalls(dir, str)
