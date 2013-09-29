require 'sinatra'
require './sinatra/links'
require 'haml'



class Julien < Sinatra::Base
  helpers Sinatra::Links

  # Homepage
  get '/' do
    haml :home
  end
end