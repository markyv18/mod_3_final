class Store
  attr_reader :long_name,
              :city,
              :distance,
              :phone_number,
              :store_type,
              :total,
              :total_stores

  def initialize(store)
    @long_name = store[:longName]
    @city = store[:city]
    @distance = store[:distance]
    @phone_number = store[:phone]
    @store_type = store[:storeType]
  end

  def self.total_stores
    @stores_api[:total]
  end

  def self.find_store(zip)
    @stores_api = StoreFinder.store_call(zip)
    @stores_api[:stores].each do |store|
      Store.new(store)
    end
  end

end
