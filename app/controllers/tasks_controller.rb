class TasksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find_by(id: params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = current_user.tasks.create(task_params)
    redirect_to task_path(task)
  end

  def edit
    @task = task.find_by(id: params[:id])
  end

  def update
    task = current_user.tasks.update(task_params)
    redirect_to task_path(task)
  end

  def destroy
    task = Task.find_by(id: params[:id])
    Task.destroy(task)
    redirect_to task_path(task)
  end

  private

  def task_params
    params.require(:task).permit(:start_time, :task_title, :description)
  end
end
