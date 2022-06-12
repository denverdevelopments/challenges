# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0
  if x == x.reverse
    p true
  else
    p false
  end
end
