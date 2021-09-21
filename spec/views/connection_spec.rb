require 'rails_helper'
RSpec.describe "New Connection", type: :system do
  it "show error if name is empty" do
    visit '/connections/new'
      # fill_in 'Name', with: ''
      fill_in 'Connection type', with: 'test'
      fill_in 'Max requests', with: 5
      fill_in 'Password', with: 'welcome@123'
    click_button('Create Connection') # submits the form
    expect(page).to have_content 'Name is too short'
  end

  it "create new connection successfully" do
    visit '/connections/new'
      fill_in 'Name', with: 'salesforce'
      fill_in 'Connection type', with: 'test'
      fill_in 'Max requests', with: 5
      fill_in 'Password', with: 'welcome@123'
    click_button('Create Connection') # submits the form
    expect(page).to have_content 'Connection was successfully created'
  end
end