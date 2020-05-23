require 'rails_helper'

describe "seeing members of the order of the phoenix" do
  it 'can see all members from selected houses' do
    visit root_path

    select "Gryffindor", :from => "house"

    click_button "Search For Members"

    expect(page).to have_content('Gryffindor')
    expect(page).to have_content('Total Members: 21')

    within ".member-5a0fa7dcae5bc100213c2338" do
      expect(page).to have_content("Sirius Black")
      expect(page).to have_content("Gryffindor")
    end
  end
end


# As a user,
# When I visit "/"
# And I Select “Gryffindor” from the select field
# (Note: Use the existing select field)
# And I click "Search For Members“
# Then I should be on page “/search”
# Then I should see the total number of the order of the phoenix members that belong to Gryffindor. (i.e. 21)
# And I should see a list with the detailed information for the 21 members of the Order of the Phoenix for house Gryffindor.
# ​
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
