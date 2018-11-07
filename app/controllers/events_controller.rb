class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
  end

  def show
    @event = Event.find_by(id: params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    event = current_user.events.create(event_params)
    redirect_to event_path(event)
  end

  def edit
    @event = Event.find_by(id: params[:id])
  end

  def update
    event = current_user.events.update(event_params)
    redirect_to event_path(event)
  end

  private

  def event_params
    params.require(:event).permit(:start_time, :end_time, :event_title, :description)
  end
end
