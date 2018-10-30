require 'rails_helper'

RSpec.feature "Pages", type: :feature do
  describe "page" do
    background do
      @user = FactoryBot.create(:user)
      @cart = FactoryBot.create(:cart)
      FactoryBot.create(:product)
    end

    scenario "visit root page" do
      visit root_path
      expect(page).to have_http_status 200
      # expect(page).to have_content "###"
    end

    scenario "visit log-in page" do
      visit new_user_session_path
      expect(page).to have_http_status 200
      # expect(page).to have_content "###"
    end

    scenario "visit sign-up page" do
      visit new_user_registration_path
      expect(page).to have_http_status 200
      # expect(page).to have_content "###"
    end

    scenario "visit products page" do
      visit products_path
      expect(page).to have_http_status 200
      expect(page).to have_content "トマト"
      expect(page).to have_content 100
    end

    scenario "visit cart page" do
      visit cart_path(@cart)
      expect(page).to have_http_status 200
      expect(page).to have_content "カート"
    end

    context "when logged-in" do
      scenario "visit user page" do
        sign_in @user
        visit user_path
        expect(page).to have_http_status 200
        expect(page).to have_content @user.email
      end

      scenario "visit edit page" do
        sign_in @user
        visit edit_user_registration_path
        expect(page).to have_http_status 200
        # expect(page).to have_content "###"
      end
    end
  end
end
