require 'sinatra'


get '/hi' do
  "Hello World!"
end


get '/time' do
  Time.now.strftime("%d-%m-%Y %B %e %A")
end

get '/hello/:name' do
  "Hello #{params[:name]}!"
end

get '/html' do
  "
<html>  
  <head>
  <title>hello </title>
  </head>
  <body>
  <h1>hello world</h1>
  </body>
  
</html>  
  "
end


get '/page' do 
name  =   params['name']
page =    File.read('./form.html')
page =  page + '<h1>' + name.to_s + '<h1>' # unless name.nil?
end

get '/page2' do 
name  =   params['name']
page =    File.read('./form.html')
page.gsub( '#name#',   name.to_s )
end
