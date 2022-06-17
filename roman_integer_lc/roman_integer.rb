# @param {String} s
# @return {Integer}
def roman_to_int(s)
  s = s.delete(" ").upcase
  ary = s.chars             #or split("")
  # del2 = s.count('IV') + s.count("IX")      #wrong count
  del2 = s.scan(/IV/).length + s.scan(/IX/).length
  del20 = s.scan(/XL/).length + s.scan(/XC/).length
  del200 = s.scan(/CD/).length + s.scan(/CM/).length
  add = ary.count("I")+ary.count("V")*5+ary.count("X")*10+ary.count("L")*50+ary.count("C")*100+ary.count("D")*500+ary.count("M")*1000
  total = add - del2*2 - del20*20 - del200*200
end

n1 = "IXIVII"
n2 = "LVIII"
n = "MCMXCIV"
p roman_to_int(n)



#1.  Read string by letter form left to right (array.shift)
    # s.upcase
    #push back into new array after evaluating
#2.  Check if next letter is bigger, for subtraction
    #OR adjust for each of 6 special cases. -2 IV and IX, -20 XL XC, -200 CD CM
#3.  Add correct value to total (start at 0)

#4.  Repeat eval process, add new value to total

#5.  Stop after last array entry, return total
