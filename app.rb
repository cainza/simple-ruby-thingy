#!/usr/bin/env ruby

require 'sinatra'

set :port, 8080
set :bind, '0.0.0.0'

#$client = Mysql2::Client.new(:host => "mariadb-test", :username => "root", :password => "testrootpassword")

get '/' do
#  test = $client.query("show mysq.tables;");
  "POD NAME: #{ENV['HOSTNAME']}"
end
