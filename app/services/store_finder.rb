class StoreFinder

  def self.find_store(zip)
    response = Faraday.get("https://api.bestbuy.com/v1/stores(area(#{zip},25))?format=json&show=longName,city,phone,distance,storeType&pageSize=2&apiKey=#{ENV["BEST_BUY_KEY"]}")
    JSON.parse(response.body, symbolize_names: true)
    byebug
    puts "hi"
end
