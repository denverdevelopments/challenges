# from GET request, needs JSON.parse(response)
require 'json'
require 'uri'

resp = {'name': 'Joe Schmoe', 'hobbies':['running','coding','painting']}
ind_start = resp.index('run')
ind_end = resp.index(']') - 2
puts  resp[ind_start..ind_end].gsub(",", ", ")
