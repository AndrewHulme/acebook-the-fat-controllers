require 'rails_helper'

RSpec.feature "Homepage", type: :feature do
  scenario "User can view posts on homepage" do
    #Create new post called 'New post!'
    visit "/"
    expect(page).to have_content("Acebook")
    expect(page).to have_content("New post!")
  end
end
