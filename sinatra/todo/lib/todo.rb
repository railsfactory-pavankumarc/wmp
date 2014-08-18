require 'sinatra'
require './todolist.rb'
file=Todolist.new("pavan.txt")
get '/todo.html' do
page=File.read('./todo.html')
end

get '/add.html' do
page=File.read('./add.html')
items=params['item']
file.add(items)
file.list
file.save
page = page + items.to_s 
end

get '/pending.html' do
page = File.read('./pending.html')
completed = params['complete']
file.complete(completed.to_i)
s=file.completed
p=file.pending
page = page + p.to_s
end

#get '/completed.html' do
#page=File.read('./completed.html')

