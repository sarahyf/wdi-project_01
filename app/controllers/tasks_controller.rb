class TasksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
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

  private

  def task_params
    params.require(:task).permit(:due_date, :task_title, :description)
  end
end
