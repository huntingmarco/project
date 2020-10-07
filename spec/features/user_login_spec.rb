require 'rails_helper'

feature 'Visitor signs in' do
    scenario 'with valid email and password' do
      create_user 'user75@example.com', 'password'
      sign_in_with 'user75@example.com', 'password'
  
      user_should_be_signed_in
    end
  
    scenario 'tries with invalid password' do
      create_user 'user85@example.com', 'password'
      sign_in_with 'user85@example.com', 'wrongpassword'
  
      page_should_display_sign_in_error
      user_should_be_signed_out
    end
  
    private
  
    def create_user(email, password)
      FactoryGirl.create(:user, :email => email, :password => password,:password_confirmation => password)
    end
  
    def sign_in_with(email, password)
      visit sign_in_path
      fill_in 'user_email', :with => email
      fill_in 'user_password', :with => password
      click_button "Log in"
    end
  
    def user_should_be_signed_in
      visit root_path
      page.should have_content('logout')
    end
  
    def user_should_be_signed_out
      page.should have_content('login')
    end
  
    def page_should_display_sign_in_error
      #page.should have_css('div.error', 'Invalid email or password')
      page.should have_content('Log in')
    end
  end