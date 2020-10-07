
require 'rails_helper'

RSpec.describe ProjectListsController, "index action" do

    it "index action should be success" do
      get :index
      assert_response :success
    end
  
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
 
  end