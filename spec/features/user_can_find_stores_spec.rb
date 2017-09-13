require 'rails_helper'

feature 'User can find stores within 25 miles' do
  it 'by searching with a zip code' do
    visit root_path

    fill_in :zip, with: "80202"
    click_on "Submit"

    expect(current_path).to eq(search_index_path)

    expect(page).to have_content("17 Total Stores")
    expect(page).to have_content("Cherry Creek Shopping Center")
    expect(page).to have_content("Denver")
    expect(page).to have_content("3.45")
    expect(page).to have_content("303-270-9189")
    expect(page).to have_content("Mobile SAS")
  end
end
