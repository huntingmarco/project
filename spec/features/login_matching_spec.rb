require 'rails_helper'

RSpec.describe "Signin" do
    
  it "it displays the signin content of the app" do    
    visit('/users/sign_in')    
    expect(page).to have_content('Log in')
  end
end