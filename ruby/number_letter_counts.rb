# I know this code is terribly-written and anti-DRY but I just wanted to solve the problem :)

@num_to_word = {
  1 => 'one', 2 => 'two', 3 => 'three',
  4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven',
  8 => 'eight', 9 => 'nine', 10 => 'ten', 
  11 => 'eleven', 12 => 'twelve', 13 => 'thirteen',
  14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
  17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen',
  20 => 'twenty', 30 => 'thirty', 40 => 'forty', 
  50 => 'fifty', 60 => 'sixty', 70 => 'seventy',
  80 => 'eighty', 90 => 'ninety'
}

def make_into_words(num)
  result = ''
  length = num.to_s.length
  case length
  when 1 then result = @num_to_word[num]
  when 2
    in_hash = @num_to_word[num]
    if in_hash
      result = in_hash
    else
      result << @num_to_word[num / 10 * 10] + @num_to_word[num % 10]
    end
  when 3
    result << @num_to_word[num / 100] + 'hundred'
    num %= 100
    in_hash = @num_to_word[num]
    if in_hash
      result << 'and' + in_hash.to_s
    elsif num != 0
      result << 'and' + @num_to_word[num / 10 * 10] + @num_to_word[num % 10]
    end
  when 4 then result = 'onethousand'
  end
  result
end
