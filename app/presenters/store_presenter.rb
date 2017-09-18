class StorePresenter
  attr_reader :stores,
              :total_stores

  def initialize(params)
    @stores = Store.find_store(params)
    @total_stores = Store.total_stores
  end

end
