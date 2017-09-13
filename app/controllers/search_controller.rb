class SearchController < ApplicationController

  def index
    @stores = Store.find_store(params[:zip])
  end

end
