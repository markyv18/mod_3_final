require 'rails_helper'

describe 'Items API endpoints' do
  it 'can return all items' do
    create_list(:item, 5)

    get '/api/v1/items'

    expect(response).to be_success
byebug
    response = JSON.parse(response.body)

    expect(response.count).to eq(5)

    expect(response.first["id"]).to eq(items.first.id)
    expect(response.first["name"]).to eq(items.first.name)
    expect(response.first["description"]).to eq(items.first.description)
    expect(response.first["image_url"]).to eq(items.first.image_url)
  end

  it 'can return one item' do
    item = create(:item)

    get "/api/v1/items/#{item.id}"

    expect(response).to be_success

    response = JSON.parse(response.body)

    expect(response["id"]).to eq(item.id)
    expect(response["name"]).to eq(item.name)
    expect(response["description"]).to eq(item.description)
    expect(response["image_url"]).to eq(item.image_url)
  end


  it 'can DESTROY an item' do
    
  end

end



# When I send a DELETE request to `/api/v1/items/1`
# I receive a 204 JSON response if the record is successfully deleted
#
# When I send a POST request to `/api/v1/items` with a name, description, and image_url
# I receive a 201 JSON  response if the record is successfully created
# And I receive a JSON response containing the id, name, description, and image_url but not the created_at or updated_at
#
# * Verify that your non-GET requests work using Postman or curl. (Hint: `ActionController::API`). Why doesn't the default `ApplicationController` support POST and PUT requests?
