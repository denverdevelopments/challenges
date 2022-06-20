# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  # return false if x < 0
  # if x.to_s == x.to_s.reverse
  #   p true
  # else
  #   p false
  # end

  x.to_s == x.to_s.reverse ? (p true) : (p false)
end
