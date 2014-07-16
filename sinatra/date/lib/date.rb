require 'sinatra'
require './numbers.rb'
require './roman.rb'
require './spell_digit.rb'

t = Roman.new
a =Numbers.new
b=Spell_digit.new
get '/date' do 
day = params['day']
month = params['month']
year = params['year']
numb = a.convert(day)
rom = t.convert(year)
spell= b.convert(year)
page = File.read('./date.html')
page = page + ' ' + day.to_s + ' ' + month.to_s + ' ' + year.to_s + '<h1>' + numb.to_s + '<h2>' + rom.to_s + '<h3>' + spell.to_s

end
