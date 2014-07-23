require "mysql2"
require 'rubygems'
require 'bundler/setup'
require 'sinatra'

@db_host  = "localhost"
@db_user  = "root"
@db_pass  = "root"
@db_name = "student"
client = Mysql2::Client.new(:host => @db_host, :username => @db_user, :password => @db_pass, :database => @db_name)
@t = ""
configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

get '/' do 
	erb :home
end



get '/show_database' do
    @a = client.query("show databases")
    task=params['data']
	erb :show
end

get '/action1' do
     $d = params[:db_name]
     client.query("use #{$d}")
     @res = client.query("show tables")
     erb :use
end


get '/action2' do
	$t=params[:tb_name]
    @r=client.query("desc #{$t}")
    @res=client.query("select * from #{$t}")
    erb :showt
end

get '/insert_content' do
 @b = client.query("SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_schema = '#{$d}' AND table_name = '#{$t}';")
erb :insert
end

get '/create_db' do
    erb :createdb
end

post '/create_db' do
@p=params[:database]
client.query("create database #{@p}")
redirect '/create_db'
end


get '/drop_db' do
    erb :dropdb
end

post '/drop_db' do
@q=params[:database]
client.query("use #{@q}")
client.query("drop database #{@q}")
redirect '/drop_db'
end

get '/create_tb' do
    erb :createtb
end

post '/create_tb' do
@r=params[:table]
@t=params[:inp]
client.query("create table #{@r}#{@t}")
redirect '/create_tb'
end


get '/drop_tb' do
    erb :droptb
end

post '/drop_tb' do
@s=params[:drop]
client.query("drop table #{@s}")
redirect '/drop_tb'
end

get '/insert_values' do
@f = $t
    erb :inserttb
end

post '/insert_values' do
    @e=params[:ins]
    client.query("insert into #{$t} values #{@e}")
    redirect '/insert_values'
end

