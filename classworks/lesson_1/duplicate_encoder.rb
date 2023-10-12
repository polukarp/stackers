def duplicate_encoder str
  new_str = ""
  str.split("").each do |char| 
    new_str += str.count(char) > 1 ? "(" : ")"
  end
  return new_str
end

p duplicate_encoder("edede")
p duplicate_encoder("asdas")
p duplicate_encoder("din")
p duplicate_encoder("(( @")
