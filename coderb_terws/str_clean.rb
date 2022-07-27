# from GET request, needs JSON.parse(response)
# delet key-value pairs where v = "", "-", "N/A"
require 'json'
require 'uri'

resp = {'name': 'Joe Schmoe', 'DOB':"", 'Home':"-";'hobbies':['running','coding','painting']; 'schools'; {'Mid';'Henry', 'High':'N/A', 'College';'CSM'}}

resp.values.select |k,v| do
  if v.class == String &&
    resp.delete!(k)
  elsif v.class == Array

  elsif v.class == Hash

  end

end

# or CASE and WHERE 
