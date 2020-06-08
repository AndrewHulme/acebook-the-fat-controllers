require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  # scenario "Can submit posts and view them" do
  #   visit "/posts"
  #   click_link "New post"
  #   fill_in "Message", with: "Hello, world!"
  #   click_button "Submit"
  #   expect(page).to have_content("Hello, world!")
  # end

  scenario "Can only submit a post if user is logged in" do
    # visit "/"
    # expect(page).to have_no_link('New post')

    # click_link('Sign Up')

    # fill_in('Email', with: 'fatcontroller@example.com')
    # fill_in('Username', with: 'FatController')
    # fill_in('Name', with: 'Fat')
    # fill_in('Password', with: 'password123')
    # fill_in('Password confirmation', with: 'password123')
    # click_button('Create User')
    # click_link('Login')

    # fill_in('Username', with: 'FatController')
    # fill_in('Password', with: 'password123')
    # click_button('Login')

    # expect(page).to have_link('New post')

  end

  scenario "Can submit posts and view them" do
    # visit "/"
    # click_link('Sign Up')

    # fill_in('Email', with: 'fatcontroller@example.com')
    # fill_in('Username', with: 'FatController')
    # fill_in('Name', with: 'Fat')
    # fill_in('Password', with: 'password123')
    # fill_in('Password confirmation', with: 'password123')
    # click_button('Create User')
    # click_link('Login')

    # fill_in('Username', with: 'FatController')
    # fill_in('Password', with: 'password123')
    # click_button('Login')

    # # Actually going to be the homepage
    # # visit "/posts"
    # click_link('New post')
    # fill_in('Message', with: 'This is to test linking posts to the user!')
    # click_button('Submit')

    # expect(page).to have_content("This is to test linking posts to the user!")
    # expect(page).to have_content("FatController")
  end

end
