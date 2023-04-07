class FdcFacade
  def initialize(food)
    @food = food
  end

  def foods
    service = FdcService.new
    json = service.food_search(@food)
    @foods = json[:foods].first(10).map do |food_data|
      Food.new(food_data)
    end
  end

  def total_results
    service = FdcService.new
    json = service.food_search(@food)[:totalHits]
  end
end