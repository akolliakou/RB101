# option 1
def word_cap(string)
  words_array = string.split

  words_array.map! { |word| word.capitalize }

  words_array.join(' ')
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# option 2
def word_cap(string)
  new_array = []

  string.split.each do |word|
    new_array << word[0].upcase + word[1..-1].downcase
  end

  new_array.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'