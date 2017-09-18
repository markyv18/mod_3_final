class SearchController < ApplicationController

  def index
    @presenter = StorePresenter.new(params[:zip])
  end

end
