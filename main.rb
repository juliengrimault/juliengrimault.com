require 'sinatra'
require './sinatra/links'
require 'haml'

class Julien < Sinatra::Base
  helpers Sinatra::Links

  def self.redis
    if ENV['REDISTOGO_URL']
      uri = URI.parse(ENV['REDISTOGO_URL'])
      @redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
    else
      Redis.new
    end
  end

  configure do
    set :redis, redis
  end

  configure :production do
    require 'newrelic_rpm'
  end

  # Homepage
  get '/' do
    haml :home
  end

end