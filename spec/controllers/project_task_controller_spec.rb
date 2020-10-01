
require 'rails_helper'

RSpec.describe ProjectTasksController, "index action" do
  
    it "index action should be success" do
      get :create
      assert_response :success
    end

    it "new should be success" do
      get :done
      assert_response :success
    end
 
  end