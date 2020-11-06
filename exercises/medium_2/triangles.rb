# A triangle is classified as follows:

# right One angle of the triangle is a right angle (90 degrees)
# acute All 3 angles of the triangle are less than 90 degrees
# obtuse One angle is greater than 90 degrees.
# To be a valid triangle, the sum of the angles must be exactly 180 degrees, 
# nd all angles must be greater than 0: if either of these conditions is not 
# satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and 
# returns a symbol :right, :acute, :obtuse, or :invalid depending on whether 
# he triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about 
# floating point errors. You may also assume that the arguments are specified 
# in degrees.


def triangle(num1, num2, num3)
  num_arr = [num1, num2, num3].sort

  if (num_arr.sum != 180) || num_arr[0] < 1
    :invalid
  elsif num_arr.include?(90)
    :right
  elsif num_arr.last > 90
    :obtuse
  else
    :acute
  end
end

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid