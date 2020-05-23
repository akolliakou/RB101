def swap(string)
  word_array = string.split

  word_array.map! do |str|
    first_letter = str.slice!(0)
    last_letter = str.slice!(-1)
    
    if str.size <= 3 
      str.reverse
    else
      last_letter + str +first_letter
    end
  end

  word_array.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'