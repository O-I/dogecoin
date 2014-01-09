# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "dogecoin"
  gem.homepage = "http://github.com/O-I/dogecoin"
  gem.license = "MIT"
  gem.summary = %Q{Ruby wrapper for the DogeAPI}
  gem.description = %Q{Such wow! Send and receive much Dogecoins!}
  gem.email = "hore.rahul@gmail.com"
  gem.authors = ["Rahul Horé"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new
