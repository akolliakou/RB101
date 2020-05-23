=begin

The method will return a new object. The array created by 
calling #split on the passed string is mutated by calling #reverse! on 
its elements (word). However, once we call #join on the array to create 
the string, this string can't ever be the original one.

=end