def staggered_case(str)
  chars_array = str.chars
  up = true

  chars_array.map! do |char|
    if true
      if char =~ /[a-z]/
        char.upcase
      elsif char =~ /[A-Z]/
        char.downcase
      elsif char =~/^[a-zA-Z]/
        up = !up
        next
      end
    else
      char
    end
    up = !up
  end

  chars_array.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'