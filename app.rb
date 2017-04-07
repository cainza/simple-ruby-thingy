#!/usr/bin/env ruby

require 'sinatra'
require 'mysql2'

set :port, 8080

$client = Mysql2::Client.new(:host => "mariadb-test", :username => "root", :password => "testrootpassword")

get '/' do
#  test = $client.query("show mysq.tables;");
  "Hello world"
end
