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

# As a user
# When I visit "/"
# And I fill in a search box with "80202" and click "search"
# Then my current path should be "/search" (ignoring params)
# And I should see stores within 25 miles of 80202
# And I should see a message that says "17 Total Stores"
# And I should see exactly 10 results (There are 17 stores within 25 miles. We want to display 10 on this page and 7 on the next. Get the first page to work first from start to finish and worry about pagination later.)
# And I should see the long name, city, distance, phone number and store type for each of the 10 results```
