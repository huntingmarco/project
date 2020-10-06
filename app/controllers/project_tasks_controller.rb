class ProjectTasksController < ApplicationController
    before_action :set_project_list
    before_action :set_project_task, except: [:create,:new]


    def new
        @project_task = @project_list.project_tasks.create
      end

    def edit
        #@project_task = @project_list.project_tasks.find(params[:id])
        #@project_task = ProjectTask.find(params[:id])
    end

    def create
     @project_task = @project_list.project_tasks.create(project_task_params)
     respond_to do |format|
        if @project_task.save
            format.js
        else
            #flash[:msg] = "invalid"
            format.js { render 'displaymessages.js.erb' }
        end
      end
    end

    def update
        respond_to do |format|
          if @project_task.update(project_task_params)
            format.js
          else
            format.js { render 'displaymessages.js.erb' }
           
          end
        end
      end

    def destroy
        @project_task = @project_list.project_tasks.find(params[:id])
        @project_task.destroy
        respond_to do |format|
            format.js 
         
          end

       
    end

    def done
        @project_task.update_attribute(:done_at, Time.now)
        respond_to do |format|
            format.js
        end
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
