def count_multibyte_char(str)
  tally = 0
  str.each_byte {|x| tally += 1 if x > 1}
  return tally
  # str.each_char.select { |c| c.bytesize > 1 }.count
end
