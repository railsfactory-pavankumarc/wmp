require 'sinatra'
require './numbers'
require './roman'
require './spell_digit'
require 'date'

t = Roman.new
a =Numbers.new
b=Spell_digit.new
get '/date' do 
day = params['day']
month = params['month']
year = params['year']

if day.to_i != 0 && month.to_i !=0 && year.to_i !=0
f = Time.new(year , month , day)
c = f.strftime('%A')
end
d = c.to_s
if d == "Monday"
d = "somavaram"
elsif d == "Tuesday"
d = "mangalavaram"
elsif d == "Wednesday"
d = "bhudhavaram"
elsif d == "Thursday"
d = "guravaram"
elsif d == "Friday"
d = "shukaravaram"
elsif d == "Saturday"
d = "shanivaram"
else d == "Sunday"
d = "aadhivaram"
end
e = c.to_s
if e == "Monday"
e = "somavara"
elsif e == "Tuesday"
e = "mangalavara"
elsif e == "Wednesday"
e = "bhudhavara"
elsif e == "Thursday"
e = "guruvara"
elsif e == "Friday"
e = "shukaravara"
elsif e == "Saturday"
e = "shanivara"
else e == "Sunday"
e = "bhanuvara"
end

numb = a.convert(day)
rom = t.convert(year)
spell= b.convert(year)
page = File.read('./date.html')
page = page + '<h1>' +  month.to_s + ' ' + day.to_s + ' ' + year.to_s +  '<h2>'
page = page + 'Day:-' + c.to_s + '<h3>'
page = page + 'Day in telugu:-' + d.to_s + '<h3>'
page = page + 'Day in kannada:-' + e.to_s + '<h3>'
page = page + 'day spelt:-' + numb.to_s + '<h3>'
page = page + 'Year in roman:-' + rom.to_s + '<h3>'
page = page + 'year in words:-' + spell.to_s
end

