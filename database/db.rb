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
     @d = params[:db_name]
     client.query("use #{@d}")
     @res = client.query("show tables")
     erb :use
end

get '/action2' do
	@t=params[:tb_name]
    @res=client.query("select * from #{@t}")
    