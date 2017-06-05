# 1. Calculate the days until Christmas this year.
#

require 'date'

def days_until_this_christmas
  #today = Date.today
  today = Date.new(2017, 12, 24)

  #xmas_date = Date.new(2017, 12, 25)
  xmas_date = Date.new((Date.today.year), 12, 25)

  if today > xmas_date
    xmas_date = Date.new((Date.today.year + 1), 12, 25)
  else
    xmas_date = Date.new((Date.today.year), 12, 25)
  end

  return (xmas_date - today).to_i
end

puts days_until_this_christmas


