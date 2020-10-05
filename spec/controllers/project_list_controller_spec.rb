
require 'rails_helper'

RSpec.describe ProjectListsController, "index action" do

    it "index action should be success" do
      get :index
      assert_response :success
    end

    #it "assigns @project_lists" do
    #  project_list = ProjectLists.create(title: “Test user”)
    #  get :index
    #  expect(assigns(:project_lists)).to eq([project_list])
    #end
    
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
 
  end