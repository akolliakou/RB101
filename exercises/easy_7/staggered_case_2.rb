def staggered_case(str)
  chars_array = str.chars
  new_array = []
  start = true

  chars_array.each do |char|
    if char =~ /[a-z]/i
      if start
        new_array << char.upcase
      else
        new_array << char.downcase
      end
      start = !start
    else
      new_array << char
    end
  end

  new_array.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'