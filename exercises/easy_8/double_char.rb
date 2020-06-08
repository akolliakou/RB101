def repeater(str)
  doubles_string = ""
  str.each_char do |char|
    doubles_string << (char * 2)
  end

  doubles_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''