def count_multibyte_char(str)
  # tally = 0
  # str.each_char {|x| tally += 1 if x.bytesize > 1}
  # return tally
  # str.each_char.select { |c| c.bytesize > 1 }.count
  str.each_char.count{|x| x.bytesize > 1}  #takes longer
end
