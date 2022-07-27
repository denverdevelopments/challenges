# from GET request, needs JSON.parse(response)
# count how many age >= 50

require 'json'
require 'uri'

resp = {'key=433rf': 'age=32', 'key=
  56t5r': 'age=52'}
resp.values.first.count {|i| i.delete("age=").to_i >= 0}
