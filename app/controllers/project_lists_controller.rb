class ProjectListsController < ApplicationController
  before_action :set_project_list, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  
  # GET /project_lists
  # GET /project_lists.json
  def index
    @project_lists = ProjectList.all
  end

  # GET /project_lists/1
  # GET /project_lists/1.json
  def show
  end

  # GET /project_lists/new
  def new
    @project_list = current_user.project_lists.build
  end

  # GET /project_lists/1/edit
  def edit
  end

  # POST /project_lists
  # POST /project_lists.json
  def create
    @project_list = current_user.project_lists.build(project_list_params)

    respond_to do |format|
      if @project_list.save
        format.js
      else
        #flash[:msg] = "invalid"
        format.js { render 'displaymessages.js.erb' }
        
      end
    end
  end

  # PATCH/PUT /project_lists/1
  # PATCH/PUT /project_lists/1.json
  def update
    respond_to do |format|
      if @project_list.update(project_list_params)
        format.js
      else
        format.js { render 'displaymessages.js.erb' }
       
      end
    end
  end

  # DELETE /project_lists/1
  # DELETE /project_lists/1.json
  def destroy
   
    respond_to do |format|
    
      @project_list.destroy
        format.js 
    end
  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_list
      @project_list = ProjectList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_list_params
      params.require(:project_list).permit(:title, :description)
    end

end
