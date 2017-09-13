class Store
  attr_reader :long_name,
              :city,
              :distance,
              :phone_number,
              :store_type

  def initialize(store)
    @ = store[:long_name]
    @ = store[:city]
    @ = store[:street_address]
    @ = store[:state]
    @ = store[:zip]
  end

  def self.find_store(zip)


end
