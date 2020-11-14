# Bubble Sort is one of the simplest sorting algorithms available. It isn't an 
# efficient algorithm, but it's a great exercise for student developers. 
# In this exercise, you will write a method that does a bubble sort of an Array.

# A bubble sort works by making multiple passes (iterations) through the Array. 
# On each pass, each pair of consecutive elements is compared. If the first of 
# the two elements is greater than the second, then the two elements are swapped. 
# This process is repeated until a complete pass is made without performing any 
# swaps; at that point, the Array is completely sorted.

def bubble_sort!(array)
  idx = 0
  array.length.times do
    until idx >= array.length-1
      if array[idx] > array[idx+1]
        array[idx], array[idx+1] = array[idx+1], array[idx]
      end
      idx += 1
    end
    idx = 0
  end
  array
end

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)