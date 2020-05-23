def after_midnight(string)
  array = string.split(":").map(&:to_i)

  if array[0] == 24 && array[1] == 0
    minutes = 0 + array[1]
  else
    minutes = array[0] * 60 + array[1]
  end

  minutes
end

def before_midnight(string)
  array = string.split(":").map(&:to_i)

  if array[0] == 0 && array[1] == 0
    minutes = 0 + array[1]
  else
    minutes = 1440 - (array[0] * 60 + array[1])
  end

  minutes
end





p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0