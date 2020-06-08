def multiply_list(arr1, arr2)
  new_array = []
  counter = 0

  while new_array.size < arr1.size
    new_array << arr1[counter] * arr2[counter]

    counter += 1
  end

  new_array
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]