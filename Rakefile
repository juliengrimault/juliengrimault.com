require 'bundler'
require_relative 'five_hundred_px'
require 'yaml'
Bundler.require

require 'uri'

desc 'Update all the sources'
task :update => ['update:500px']


namespace :update do

  desc 'Fetch latest photos from 500px and store them in 500px.yml'
  task '500px' do
    response = px500.user_photos('juliengrimault', query: { rpp: 4, image_size: 3 })
    photos = JSON(response.body)['photos']
    File.open('_data/500px.yml', 'w') {|f| f.write photos.to_yaml }
  end
end

def px500
  @px500 ||= if ENV['FIVE_HUNDRED_PX']
    FiveHundredPx.new(ENV['FIVE_HUNDRED_PX'])
  else
    raise 'You must set the environment variable FIVE_HUNDRED_PX'
  end
end