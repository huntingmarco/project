class ProjectTasksController < ApplicationController
    before_action :set_project_list
    before_action :set_project_task, except: [:create]

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

        #disable this redirect_to when using ajax
        redirect_to @project_list 

        #using ajax
        #respond_to do |format|
        #    format.html { redirect_to @project_list }
        #    format.js
        #  end
        #using ajax
    end

    def done
        @project_task.update_attribute(:done_at, Time.now)
        redirect_to @project_list, notice: "Project task done"
    end

    private
    def set_project_list
     @project_list = ProjectList.find(params[:project_list_id])
    end

    def set_project_task
        @project_task = @project_list.project_tasks.find(params[:id])
    end

    def project_task_params
     params[:project_task].permit(:content, :deadline, file:[])
    end

end
