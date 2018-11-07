class NotesController < ApplicationController
  def index
  end

  def show
    @note = Note.find_by(id: params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    note = current_user.notes.create(note_params)
    redirect_to note_path(note)
  end

  def edit
    @note = note.find_by(id: params[:id])
  end

  def update
    note = current_user.notes.update(note_params)
    redirect_to note_path(note)
  end

  private

  def note_params
    params.require(:note).permit(:start_time, :description)
  end
end
