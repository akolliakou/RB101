# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides 
# must be greater than the length of the longest side, and all sides must 
# have lengths greater than 0: if either of these conditions is not satisfied, 
# the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as 
# arguments, and returns a symbol :equilateral, :isosceles, :scalene, or 
# :invalid depending on whether the triangle is equilateral, isosceles, 
# scalene, or invalid.

def triangle(side1, side2, side3)
  triangle = [side1, side2, side3].sort

  if triangle.any?(0) || triangle[0] + triangle[1] < triangle[2]
    :invalid
  elsif triangle.uniq.length == 1
    :equilateral
  elsif triangle[1] == triangle[2]
    :isosceles
  else
    :scalene
  end
end


triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid
