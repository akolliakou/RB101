DEGREE = "\xC2\xB0"

def dms(n)
  degrees = n.floor.to_s + DEGREE
  minutes = ((n - n.floor) * 60).floor.to_s + "'"
  seconds = (((n - n.floor) * 60 -  ((n - n.floor) * 60).floor) * 60).floor.to_s + "\""

  new_array = []

  new_array << degrees

  if minutes.length < 3 
    new_array << minutes.prepend('0')
  else
    new_array << minutes
  end

  if seconds.length < 3 
    new_array << seconds.prepend('0')
  else
    new_array << seconds
  end

  puts  new_array.join
end


# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")









