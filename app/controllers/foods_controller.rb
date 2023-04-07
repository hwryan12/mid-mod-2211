class FoodsController < ApplicationController
  def index
    @facade = FdcFacade.new(params[:q])
  end
end