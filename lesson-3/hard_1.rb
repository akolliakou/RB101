# Question 1:
# -----------
# The value of greeting is nil. The variable is accessible outside the if block
# but doesn't get executed because the if statement evaluates to false. 

# Question 2:
# -----------
# {a: "hi there"}

# Question 3:
# -----------
# In the first two cases the operation within the method is assignment which doesn't
# mutate the caller so the variables are still pointing to the original objects
# in the last case, calling gsub! destructively changes the original object so 
# the variables are pointing to the same albeit modified objects.

# Question 4:
#------------
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end