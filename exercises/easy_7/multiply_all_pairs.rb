def multiply_all_pairs(arr1, arr2)
  final_array = []

  arr1.each do |n1|
    arr2.each do |n2|
      final_array << n1 * n2
    end
  end

  final_array.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]