class StoreFinder

  def self.store_call(zip)
    response = connect.get(zip_search(zip))
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.connect
    Faraday.new(url: "https://api.bestbuy.com")
  end

  def self.zip_search(zip)
    "/v1/stores(area(#{zip},25))#{bestbuy_search_params}"
  end

  def self.bestbuy_search_params
    "?format=json&show=longName,city,phone,distance,storeType&pageSize=10&apiKey=#{ENV["BEST_BUY_KEY"]}"
  end

end
