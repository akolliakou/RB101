def letter_case_count(string)
  chars_array = string.chars
  count_hash = {}
  count_hash[:lowercase] = 0
  count_hash[:uppercase] = 0
  count_hash[:neither] = 0

  chars_array.each do |chr|
    if chr == chr.to_i.to_s || "^A-Za-z".include?(chr)
      count_hash[:neither] += 1
    elsif  chr == chr.downcase
      count_hash[:lowercase] += 1
    elsif chr == chr.upcase
      count_hash[:uppercase] += 1
    end    
  end

  p count_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }