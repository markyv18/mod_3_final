class Store
  attr_reader :long_name,
              :city,
              :distance,
              :phone_number,
              :store_type,
              :total_stores

  def initialize(store)
    @long_name = store[:longName]
    @city = store[:city]
    @distance = store[:distance]
    @phone_number = store[:phone]
    @store_type = store[:storeType]
  end

  def self.find_store(zip)
    stores_api = StoreFinder.store_call(zip)
    @total_stores =stores_api[:total]
    stores_api.each do |store|
      Store.new(store)
    end
  end

end
