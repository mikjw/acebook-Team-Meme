require 'rails_helper'

RSpec.feature "Sign up Page", type: :feature do
  scenario "User can sign up to Acebook" do
    visit "/sign_up"
    fill_in "first_name", with: "Bob"
    fill_in "surname", with: "Toast"
    fill_in "email", with: "Toast@gmail.com"
    fill_in "password", with: "123"
    fill_in "Birthday", with: "1/01/1990"
    click_button "Female"
    click_button "sign_up"
    expect(page).to have_content("Welcome")
  end
end
