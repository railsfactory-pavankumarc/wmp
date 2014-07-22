require "mysql2"
require 'rubygems'
require 'bundler/setup'
require 'sinatra'

@db_host  = "localhost"
@db_user  = "root"
@db_pass  = "123"
@db_name = "ruby"
client = Mysql2::Client.new(:host => @db_host, :username => @db_user, :password => @db_pass, :database => @db_name)

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