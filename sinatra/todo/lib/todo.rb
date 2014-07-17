require 'sinatra'
require './todolist.rb'

get '/todo.html' do
page=File.read('./todo.html')
end

get '/add.html' do
file=Todolist.new("pavan.txt")
page=File.read('./add.html')
items=params['item']
file.add(items)
file.list
file.save
page = page + items.to_s 
end

get '/pending.html' do
f = Todolist.new("pending.txt")
page = File.read('./pending.html')
f.load1
f.list
completed = params['complete']
a = f.complete(completed)
page = page +  pend.to_s 
end

#get '/completed.html' do
#page=File.read('./completed.html')

