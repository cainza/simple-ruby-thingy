#!/usr/bin/env ruby

require 'sinatra'
require 'mysql2'

set :port, 8080

get '/' do
  "Hello world"
end
