def interleave(arr1, arr2)
  # final_array = []
  # counter = 0

  # until final_array.size == (arr1 + arr2).size
  #   final_array << arr1[counter]
  #   final_array << arr2[counter]

  #   counter += 1
  # end

  # p final_array

  p arr1.zip(arr2).flatten
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']