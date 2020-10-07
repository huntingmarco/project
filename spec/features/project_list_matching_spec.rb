require 'rails_helper'

RSpec.describe "Home page matcing" do

    it "it displays the name of the app" do
      visit('/project_lists')
      expect(page).to have_content('Project')
      click_link('login')
      expect(current_path).to eql('/users/sign_in')
      expect(page).to have_content('Email')
    end

  
 
  end