require 'rest-client'
require 'json'
require 'httparty'
require 'logger'

class ApitestController < ApplicationController
  def index
    url = 'https://api.spotify.com/v1/search?type=artist&q=tycho'

    #response = RestClient.get(url)
    #data = JSON.parse(response)
    #render :text => data.inspect


    response = HTTParty.get(url)
    response.parsed_response


  end
end
