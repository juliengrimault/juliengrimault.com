require 'sinatra'
require './sinatra/links'
require 'haml'

class Julien < Sinatra::Base
  helpers Sinatra::Links

  configure :production do
    require 'newrelic_rpm'
  end

  # Homepage
  get '/' do
    haml :home
  end
end