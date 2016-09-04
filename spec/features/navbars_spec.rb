require 'rails_helper'

RSpec.feature "Navbars", type: :feature do

  it "should be present" do
    visit(root_path)
    page.has_css?("nav .navbar")
  end

  it "should have a link to the homepage" do
    visit(about_path)
    click_link("FGD")
    expect(page).to have_current_path(root_path)
  end

  before(:each) do
    visit(root_path)
  end

  it "should have a link to the about page" do
    click_link("About")
    expect(page).to have_current_path(about_path)
  end

  it "should have a link to the guides page" do
    click_link("Guides")
    expect(page).to have_current_path(guides_path)
  end

  it "should have a link to the contact page" do
    click_link("Contact")
    expect(page).to have_current_path(contact_path)
  end

end
