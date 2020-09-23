class ProjectTasksController < ApplicationController
    before_action :set_project_list
    def create
     @project_task = @project_list.project_tasks.create(project_task_params)
     redirect_to @project_list
    end

    def destroy
        @project_task = @project_list.project_tasks.find(params[:id])
        if @project_task.destroy
         flash[:success] = "Project List task was deleted."
        else
         flash[:error] = "Project List task could not be deleted."
        end
        redirect_to @project_list 
    end

    private
    def set_project_list
     @project_list = ProjectList.find(params[:project_list_id])
    end


    def project_task_params
     params[:project_task].permit(:content, :deadline, :myfile)
    end

end
