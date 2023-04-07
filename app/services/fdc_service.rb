class FdcService
  def food_search(food)
    get_url("/fdc/v1/foods/search?query=#{food}")
  end
  
  private 
    def conn 
      Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
        faraday.params["api_key"] = ENV["FDC_API_KEY"]
      end
    end

    def get_url(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end
end