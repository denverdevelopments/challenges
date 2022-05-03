# In this challenge, a hash object called hackerrank is already created. You have to add:
#
# A key-value pair [543121, 100] to the hackerrank object using store
# Retain all key-value pairs where keys are Integers ( clue : is_a? Integer )
# Delete all key-value pairs where keys are even-valued.

# Enter your code here.
hackerrank.store(543121,100)
hackerrank.keep_if {|k,v| k.is_a? Integer}
hackerrank.delete_if {|k,v| k % 2 == 0}
