def time_of_day(n)
  time_minutes = []

  if n >= 0
    if n.between?(0, 59)
      time_minutes[0] = 0.to_s
      time_minutes[1] = n.to_s
    elsif n.between?(60, 1439)
      num, remainder = n.divmod(60)
      time_minutes[1] = num.to_s
      time_minutes[0] = remainder.to_s
    elsif n >= 1440
      num, remainder = n.divmod(1440)
      time_minutes[0] = (remainder / 60).to_s
      time_minutes[1] = (remainder % 60).to_s
    end
  else
      if n.between?(-59, 0)
      time_minutes[0] = (24 - 1).to_s
      time_minutes[1] = (60 + n).to_s
    elsif n.between?(-1439, -60)
      num, remainder = n.divmod(60)
      time_minutes[0] = (num + 24).to_s
      time_minutes[1] = remainder.to_s
    elsif n <= -1440
      num, remainder = n.divmod(1440)
      time_minutes[0] = (remainder / 60).to_s
      time_minutes[1] = (remainder % 60).to_s
    end
  end

  if time_minutes[0].to_i.between?(0, 9) && time_minutes[1].to_i.between?(0, 9)
    time_minutes[0].prepend("0")
    time_minutes[1].concat("0")
  elsif time_minutes[0].to_i >= 10 && time_minutes[1].to_i.between?(0, 9)
    time_minutes[1].concat("0")
  elsif time_minutes[0].to_i.between?(0, 9) && time_minutes[1].to_i >= 10
    time_minutes[0].prepend("0")
  end

 p time_minutes.join(":")
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"