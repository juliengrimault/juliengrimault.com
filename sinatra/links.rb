require 'sinatra/base'

module Sinatra
  module Links
    def link_nofollow(title, url)
      "<a href='#{url}' rel='external nofollow'>#{title}</a>"
    end
  end

  helpers Links
end