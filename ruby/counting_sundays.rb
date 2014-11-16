require 'date'

def count_sundays
  sunday_count = 0
  date = Date.new(1901, 1, 1)
  end_date = Date.new(2000, 12, 31)
  while date <= end_date
    sunday_count += 1 if date.sunday?
    date = date >> 1
  end
  sunday_count
end

p count_sundays 
