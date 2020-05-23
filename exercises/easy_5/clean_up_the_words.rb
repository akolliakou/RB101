def cleanup(string)
  string.gsub(/[^A-Za-z]/, " ").squeeze(" ")
end

p cleanup("---what's my +*& line?") == ' what s my line '