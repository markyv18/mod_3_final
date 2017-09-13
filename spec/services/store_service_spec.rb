require 'rails_helper'

describe 'service can call api' do
  it 'and return a list of 17 stores in a hash' do
    results = StoreFinder.store_call(80202)
    expect(results[:total]).to eq(17)
  end
end
