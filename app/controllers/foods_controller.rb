class FoodsController < ApplicationController
  def index
    food = params[:q]

    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.params["api_key"] = ENV["FDC_API_KEY"]
    end

    response = conn.get("/fdc/v1/foods/search?query=#{food}")

    json = JSON.parse(response.body, symbolize_names: true)
    @total_results = json[:totalHits]
    @foods = json[:foods]
    binding.pry
  end
end