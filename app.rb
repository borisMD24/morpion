require 'bundler'
Bundler.require
Dir["./lib/*.rb"].map {|f| require_relative f}
system("clear")
Application.new().perform