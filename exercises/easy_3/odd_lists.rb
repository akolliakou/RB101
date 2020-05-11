# Original problem solution 1
def oddities(array)
  array.select.with_index do |_, i|
    i.even?
  end
end

# Original problem solution 2
def oddities(array)
  odd_array = []
  index = 0
  while index < array.length
    odd_array << array[index]
    index += 2
  end
  odd_array
end

# Further exploration 1
def oddities(array)
  odd_array = []
  index = 1
  while index < array.length
    odd_array << array[index]
    index += 2
  end
  odd_array
end

# Further exploration 2
def oddities(array)
  array.select.with_index do |_, i|
    i.odd?
  end
end