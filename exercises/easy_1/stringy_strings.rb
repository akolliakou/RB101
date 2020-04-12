def stringy(num)
  array = []

  num.times do |n|
    if n.odd?
      array.push('0')
    else
      array.push('1')
    end
  end
  array.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
