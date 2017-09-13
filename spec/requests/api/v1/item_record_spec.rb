require 'rails_helper'

describe 'Items API endpoints' do
  it 'can return all items' do
    a = create_list(:item, 5)

    get '/api/v1/items'

    expect(response).to be_success

    response1 = JSON.parse(response.body)

    expect(response1.count).to eq(5)

    expect(response1.first["name"]).to eq(a.first.name)
    expect(response1.first["description"]).to eq(a.first.description)
    expect(response1.first["image_url"]).to eq(a.first.image_url)
  end

  it 'can return one item' do
    item = create(:item)

    get "/api/v1/items/#{item.id}"

    expect(response).to be_success

    response1 = JSON.parse(response.body)

    expect(response1["id"]).to eq(item.id)
    expect(response1["name"]).to eq(item.name)
    expect(response1["description"]).to eq(item.description)
    expect(response1["image_url"]).to eq(item.image_url)
  end


  it 'can DESTROY an item' do
    item = create(:item)
    id = item.id

    delete "/api/v1/items/#{id}"

    expect(response).to be_success
    expect{ Item.find(id) }.to raise_error(ActiveRecord::RecordNotFound)
  end

  it 'can create an item' do
  item_params = attributes_for(:item)

  expect{ post "/api/v1/items/", item: item_params }.to change(Item, :count).by(1)

  expect(response).to be_success
  expect(response.status).to eq(200)
  expect(item_params[:name]).to eq(Item.last.name)
  expect(item_params[:description]).to eq(Item.last.description)
  expect(item_params[:image_url]).to eq(Item.last.image_url)
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
