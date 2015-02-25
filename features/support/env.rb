# Generated by cucumber-sinatra. (2015-02-24 18:51:06 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', '/server.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = BookmarkManager

class BookmarkManagerWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  BookmarkManagerWorld.new
end
