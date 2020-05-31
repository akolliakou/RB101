def reverse!(array)
  counter_up = 0
  counter_down = -1

  while counter_up < array.size / 2
    array[counter_up], array[counter_down] = array[counter_down], array[counter_up]

    counter_up += 1
    counter_down -= 1
  end
  
  array
end





list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []