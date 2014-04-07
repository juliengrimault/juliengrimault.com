require 'httparty'
class FiveHundredPx
  include HTTParty
  base_uri 'https://api.500px.com/v1'

  def initialize(consumer_key)
    self.class.default_params :consumer_key => consumer_key
  end

  def user_photos(username, options={})
    self.class.get("/photos?feature=user&username=#{username}", options)
  end
end