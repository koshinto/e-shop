require 'rails_helper'

RSpec.feature "Sessions", type: :feature do
  describe "login and logout" do
    background do
      @user = FactoryBot.create(:user)
    end

    scenario "login" do
      visit root_path
      click_link "ログイン"
      fill_in "Email", with: @user.email
      fill_in "Password", with: @user.password
      click_button "Log in"
      expect(page.status_code).to be 200
      expect(page).to have_content "ログアウト"
    end

    scenario "login fails when without email" do
      visit root_path
      click_link "ログイン"
      fill_in "Password", with: @user.password
      click_button "Log in"
      expect(page.status_code).to be 200
      expect(page).to have_content "Log in"
    end

    scenario "login fails when without password" do
      visit root_path
      click_link "ログイン"
      fill_in "Email", with: @user.email
      click_button "Log in"
      expect(page.status_code).to be 200
      expect(page).to have_content "Log in"
    end

    scenario "logout" do
      sign_in @user
      visit root_path
      expect(page.status_code).to be 200
      expect(page).to have_content "ログアウト"
      click_link "ログアウト"
      expect(page.status_code).to be 200
      expect(page).to have_content "ログイン"
    end
  end
end
