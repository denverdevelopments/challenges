# KNOWNS: one axis of dir., left or right equating to -1 or 1
#         each ball moving at same non-zero speed
#         strength is only other characteristic, higher str destroys lower

def findRemainingBalls(dir, str)
  #NO find strongest ball, it's strength, position, direction.

# create ball class,
# find first ball going right
# loop/interate traverse thru until no collisions
# STEP-by-STEP/

  dir_left = []
  store_left = []
  index = -1
  # remain = []
  # size = dir.length
  # big_ind = str.find_index(str.max)

  # case 1 all same dir, no collision. LLL or RRR
  if dir.uniq.size == 1 ##end
    dir_left = dir
    str_left = str
  # case 2 all same dir except either end, no collision.
  # LLLR, LLRR, LRRR
  elsif


  elsif
    # add conditional, if all the direction values are 1, or -1, return a new array of incrementing integers from 0 to (n - 1)
    if dir.first == -1
      dir_left.push(dir.shift)
      str_left.push(str.shift)
    end


  # dir.each_with_index
  (size-1).times do
    index += 1
    unless index == 0 && dir[index] == -1
      remain << big_ind

      if big_ind == 1 &&
        if  dir[index] == dir[big_ind]*-1
        end
      elsif big_ind == -1

      end
    end
    if index == 0 && dir[index] == -1
      remain << 0
      dir.shift
    end
    if (index + 1) == (size-1) && dir[(index + 1)] == 1
      remain << (size -1)
    end

  p remain

end

dir = [1,-1]
str = [2,1]

findRemainingBalls(dir, str)
