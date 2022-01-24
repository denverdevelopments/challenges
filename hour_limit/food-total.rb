def find_high

menu = {
      'veggie sandwich' => 6.85,
      'extra veggies' => 2.20,
      'chicken sandwich' => 7.85,
      'extra chicken' => 3.20,
      'cheese' => 1.25,
      'chips' => 1.40,
      'nachos' => 3.45,
      'soda' => 2.05,
    }

  receipts = [4.85, 11.05, 13.75, 17.75, 18.25, 19.40, 28.25, 40.30, 75.00]

  # hash.key(value) => key
  # max_by{|k,v| v } => [k,v]
  # .round(2)
  # X high = menu.max_by{|k,v| v && v < receipt}


  # for fewest items for total, try single receipt total first:

  # 1.  find highest priced item less than total
  #   set 'high' = 0, iterate thru menu to find highest && < receipt
  #   'max' enum finds highest && < receipt
  # 2.  calculate change, find priciest item for change
  # 3.  keep cyling thru until change < 7.85
  # 4.  counter items hash, key is item name, value starts 0 incrementing += 1 after it's subtracted
  # 5.  at end when change = 2, print string interpolating total of item counters, if item value != 0, print item key and value.
  # 6.  if change < 1.25, undo increment for previous item and subtract next priciest item
  # ?7.  check multiples modulo equals zero (ex. 9 % 0 == 3)
  # ?8.  map and sort all values, to find key for max_by value

  tally = {
        'veggie sandwich' => 0,
        'extra veggies' => 0,
        'chicken sandwich' => 0,
        'extra chicken' => 0,
        'cheese' => 0,
        'chips' => 0,
        'nachos' => 0,
        'soda' => 0,
      }

change = 1
until change <= 0
    receipt = 4.85
    high = 0

  # def find_high
    menu.each do |k,v|
       high = v if v > high && v < receipt
    end
    if receipt - high >= 1.25
      item = menu.key(high)
      tally[item] += 1
      change = receipt - high
    end
    p receipt
    p high
    p change.to_s + "  " + item
    return change.round(2)

  end
end
  print find_high
  print tally
  # require "pry"; binding.pry
