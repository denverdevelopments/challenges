
def serial_average(str)
  avg = ((str[4,5].to_f + str[10,5].to_f)/2).to_s
  # str[4,11] = ' '
  # str.strip + sprintf('%.2f', avg)
  str[0,4] + sprintf('%.2f', avg)
  # "#{str[0,4]}" + "#{sprintf('%.2f', avg)}"
end
