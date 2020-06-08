require 'rails_helper'

RSpec.feature "Sign Up", type: :feature do
  scenario "Homepage has link for signup" do
    visit "/"
    expect(page).to have_link("Sign Up")
  end

  scenario "user can signup" do
    visit "/signup"
    fill_in('Name', with: 'Name')
    fill_in('Username', with: 'Test')
    fill_in('Email', with: 'test@example.com')
    fill_in('Password', with: 'password123')
    fill_in('Password confirmation', with: 'password123')
    click_button('Create User')
    expect(page).to have_content("User was successfully created.")
    expect(page).to have_content("test@example.com")
    expect(page).to have_content("Test")
    expect(page).to have_content("Name")
    expect(page).to have_link("Login")
  end

end
