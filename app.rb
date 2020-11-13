#!/usr/bin/env ruby

require 'sinatra'
#require 'mysql2'

set :port, 8080

#$client = Mysql2::Client.new(:host => "mariadb-test", :username => "root", :password => "testrootpassword")

get '/' do
#  test = $client.query("show mysq.tables;");
  "Hello demo peeps<br>POD NAME: #{ENV['MY_POD_NAME']}<br>POD IP: #{ENV['MY_POD_IP']}<br>POD NODE: #{ENV['MY_POD_NODE']}<"
end
