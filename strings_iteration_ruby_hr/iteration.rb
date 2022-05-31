
  # avg = ((str[4,5].to_f + str[10,5].to_f)/2).to_s
    # str[4,11] = ' '
    # str.strip + sprintf('%.2f', avg)
      # str[0,4] + sprintf('%.2f', avg)
    # "#{str[0,4]}" + "#{sprintf('%.2f', avg)}"

  # arr=str.split("-")
  # avg = (((arr[1].to_f) + (arr[2].to_f))/2).round(2)
  #
	# return "#{arr[0]}" + "-" + "#{avg}"

def count_multibyte_char(str)
  tally = 0
  str.each_byte {|x| tally += 1 if x > 1}
  return tally
end
