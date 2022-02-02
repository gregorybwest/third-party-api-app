class CatsController < ApplicationController
  def index
    cats = HTTP.headers("X-Api-Key" => "86381865-4487-45c1-9061-fc6c3ad6f972").get("https://api.thecatapi.com/v1/breeds").parse(:json)
    render json: cats
  end
end
