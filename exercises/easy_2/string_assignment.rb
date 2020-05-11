=begin

the program will print out
BOB
BOB

in the first example, we have variable reassignment 
where name is pointed to a different string object. 
The value of the inital string object which is also referenced 
by save_name is not modified so save_name still references 'Bob'
in the second example, calling #upcase! on the name variable 
mutates the caller and modifies the value of string object Bob. 
Since save_name is pointing to the same object too, 
the value it is refencing will be modified to 'BOB' too.

=end