=begin

Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo

Calling the first each on array1 copies the references 
of each element to array2.
Calling the second each on array1 modifies the string objects 
that the elements are pointing to. Since array2 contains 
the same references as array1 (from the first iteration) 
once they are modified in array1, they will be modified 
in array2 as well. Array2 still has the same object id, it is
its elements that have been modified.

=end

