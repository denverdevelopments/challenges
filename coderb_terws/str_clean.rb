# from GET request, needs JSON.parse(response)
# delet key-value pairs where v = "", "-", "N/A"
require 'json'
require 'uri'

resp = {'name': 'Joe Schmoe', 'DOB':"", 'Home':"-";'hobbies':['running','coding','painting']; 'schools'; {'Mid';'Henry', 'High':'N/A', 'College';'CSM'}}

resp.values.select |k,v| do
  case v.class
  when String
    resp.delete!(k)
  when Array
    resp.delete!(k)
  when Hash
    resp.delete!(k)
  else
  end

  # if v.class == String &&
  #   resp.delete!(k)
  # elsif v.class == Array
  #   resp.delete!(k)
  # elsif v.class == Hash
  #   resp.delete!(k)
  # end
end

# apple_stock > 1 ? (puts 'eat') : "buy"
# apple_stock > 1 ? :eat_apple : :buy_apple
# or CASE and WHERE
