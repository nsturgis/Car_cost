require "rails_helper"

feature "Authenticated user can create cost on car site" do
  scenario "User successfully creates a cost for car site" do
    user = FactoryGirl.create(:user)
    site = FactoryGirl.create(:car)
    sign_in_as(user)

    visit new_car_cost_path(car)
    fill_in "Down payment", with: "1000"
    fill_in "Interest rate", with: "8"
    fill_in "Time horizon in years", with: "8"
    click_on "Create Cost"

    expect(page).to have_content "1"
  end

  scenario "User fails to creates a cost for blank down payment" do
    user = FactoryGirl.create(:user)
    site = FactoryGirl.create(:car)
    sign_in_as(user)
    visit new_car_cost_path(car)

    fill_in "Down payment", with: ""
    fill_in "Interest rate", with: "8"
    fill_in "Time horizon in years", with: "8"
    click_on "Create Cost"

    expect(page).to have_content "can't be blank"
  end


