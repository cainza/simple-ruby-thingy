#!/usr/bin/env ruby

require 'sinatra'
#require 'mysql2'

set :port, 8080
set :bind, '0.0.0.0'

#$client = Mysql2::Client.new(:host => "mariadb-test", :username => "root", :password => "testrootpassword")

get '/' do
#  test = $client.query("show mysq.tables;");
  "Hello demo peeps<br>POD NAME: #{ENV['MY_POD_NAME']}<br>\nPOD IP: #{ENV['MY_POD_IP']}<br>\nPOD NODE: #{ENV['MY_NODE_NAME']}"
end
