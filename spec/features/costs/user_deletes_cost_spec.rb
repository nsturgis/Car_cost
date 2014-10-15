require "rails_helper"

feature "Delete site" do
  scenario "user deletes review succesfully" do
    review = FactoryGirl.create(:cost)
    sign_in_as(cost.user)

    visit site_path(cost.car)

    click_on "Delete"

    expect(page).to have_content "Review destroyed successfully"
  end
end
