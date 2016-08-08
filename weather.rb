require 'barometer'

puts "Please enter your location."
loc = gets.chomp

barometer = Barometer.new(loc)
weather = barometer.measure

i = 0
while i < 5 do
day = weather.forecast.entries[i].ends_at.strftime('%a')
if i == 0 
	day = "Tomorrow"
end
puts "#{day} is going to be #{weather.forecast.entries[i].icon} with a low of #{weather.forecast.entries[i].low.chomp} and a high of #{weather.forecast.entries[i].high.chomp} degrees celsius."
i +=1
end








