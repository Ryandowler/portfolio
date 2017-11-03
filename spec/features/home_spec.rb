require 'rails_helper'

feature "visit the homepage" do
  scenario "user see welcome text" do
   	visit root_path
   	expect(page).to have_text("About me")
  end
   scenario "user see other text" do
   	visit root_path
   	expect(page).to have_text("Request CV")
  end
end
