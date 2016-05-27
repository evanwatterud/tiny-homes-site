require 'rails_helper'

describe 'layouts/application.html.erb' do
  before(:each) do
    visit root_path
  end

  it "should have a top nav bar" do
    within '.top-nav-bar' do
      expect(page).to have_link('Home')
      expect(page).to have_link('Gallery')
      expect(page).to have_link('The Team')
      expect(page).to have_link('Contact Us')
      expect(page).to have_link('FAQ')
    end
  end

  it "should have a bottom nav bar" do
    within '.bottom-nav-bar' do
      within '.social-media-links' do
        expect(page).to have_link('Facebook')
        expect(page).to have_link('Twitter')
        expect(page).to have_link('Instagram')
      end

      expect(page).to have_link('Contact')
      expect(page).to have_link('Privacy')
      expect(page).to have_link('Terms & Conditions')
      expect(page).to have_content('Copyright © 2016 Example Tiny Houses All Rights Reserved.')
    end
  end
end
