
require 'rails_helper'

RSpec.describe ProjectListsController, "index action" do

    it "index action should be success" do
      get :index
      assert_response :success
    end

    it "new should be success" do
      get new_project_list_url
      assert_response :success
    end
 
  end