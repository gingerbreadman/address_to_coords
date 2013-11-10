require 'open-uri'
require 'json'

class AddressesController < ApplicationController
  def fetch_coordinates
    @address = "the corner of Church and Chicago"
    @url_safe_address = URI.encode(@address)

    url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{@url_safe_address}&sensor=false"

    raw_data = open(url).read

    parsed_data = JSON.parse(raw_data)

    @latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]

    @longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

    # Your code goes here.
    # url = ?
    # raw_data = ?
    # parsed_data = ?
    # @latitude = ?
    # @longitude = ?
  end
end
