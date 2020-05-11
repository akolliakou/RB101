def century_num(year)
  year % 100 == 0 ? year / 100 : (year / 100) + 1
end

def century(year)
  num = century_num(year)
  case num % 100
  when 11..13
    num.to_s + 'th'
  else
    case num % 10
    when 1
      num.to_s + 'st'
    when 2
      num.to_s + 'nd'
    when 3
      num.to_s + 'rd'
    else
      num.to_s + 'th'
    end
  end
end
