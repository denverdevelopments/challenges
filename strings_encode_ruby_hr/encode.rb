
# def transcode(string_in)
#   string_in.encoding
# end

def transcode(str)
  str.force_encoding('UTF-8')
end

# def transcode(str)
#     str.encode('UTF-8')
# end
#
# def transcode
#   encoding
# end
