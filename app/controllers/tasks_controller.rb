class TasksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @incomplete_tasks = current_user.tasks.where(completed: false)
    @complete_tasks = current_user.tasks.where(completed: true)
  end

  # def show
  #   @task = Task.find_by(id: params[:id])
  # end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.create(task_params)

    respond_to do |f|
      f.html { redirect_to tasks_url }
      f.js
    end
  end

  def update
    @task = Task.find_by(id: params[:id])
    @task.update(task_params)

    respond_to do |f|
      f.html { redirect_to tasks_path }
      f.js
    end
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    current_user.tasks.destroy(@task)

    respond_to do |f|
      f.html { redirect_to tasks_path(current_user.tasks) }
      f.js
    end
  end

  private

  def task_params
    params.require(:task).permit(:task_title, :completed)
  end
end
