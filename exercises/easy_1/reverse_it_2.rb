def reverse_it(string)
  array = string.split

  array.map do |word|
    word.reverse! if word.length >= 5
  end

  array.join(' ')
end

reverse_it("There it is")
reverse_it("Sometimes")
reverse_it("You need everything")
reverse_it("They managed that")