#!/usr/bin/env ruby

require 'sinatra'

set :port, 8080

get '/' do
  "Hello world"
end
