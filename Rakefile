require 'bundler'
require_relative 'utils/five_hundred_px'
Bundler.require

require 'uri'
require 'redis'

desc 'Update all the sources'
task :update => ['update:500px']


namespace :update do

  desc 'Fetch latest photos from 500px and store them in redis'
  task '500px' do
    response = px500.user_photos('juliengrimault', query: { rpp: 4, image_size: 3 })
    photos = JSON(response.body)['photos']
    redis['500px'] = JSON.dump(photos)
  end
end


def redis
  @redis ||= if ENV['REDISTOGO_URL']
    uri = URI.parse(ENV['REDISTOGO_URL'])
    @redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
  else
    Redis.new
  end
end

def px500
  @px500 ||= if ENV['FIVE_HUNDRED_PX']
    Utils::FiveHundredPx.new(ENV['FIVE_HUNDRED_PX'])
  else
    raise 'You must set the environment variable FIVE_HUNDRED_PX'
  end
end