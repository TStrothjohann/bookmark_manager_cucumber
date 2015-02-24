require 'sinatra/base'
require 'data_mapper'

env = ENV['RACK_ENV'] || 'development'
DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")

require './lib/link' # this needs to be done after datamapper is initialised
# After declaring your models, you should finalise them
DataMapper.finalize
# However, the database tables don't exist yet. Let's tell datamapper to create them
DataMapper.auto_upgrade!


class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello BookmarkManager!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
