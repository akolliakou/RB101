def halvsies(array)
  length = array.length
  new_array = []

  if length.odd?
    new_array << array.first(length / 2 + 1)
    new_array << array.last(length / 2)
  else
    new_array << array.first(length / 2)
    new_array << array.last(length / 2)
  end

  new_array
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]