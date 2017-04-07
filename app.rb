#!/usr/bin/env ruby

require 'sinatra'
require 'mysql2'

set :port, 8080

$client = Mysql2::Client.new(:host => "172.30.163.225t", :username => "root", :password => "testrootpassword")

get '/' do
  test = $client.query("show mysq.tables;");
  "Hello world #{test}"
end
