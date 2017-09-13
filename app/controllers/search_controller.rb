class SearchController < ApplicationController

  def index
    # if spare time extract both to presenter
    @stores = Store.find_store(params[:zip])
    @total_stores = Store.total_stores
  end

end
