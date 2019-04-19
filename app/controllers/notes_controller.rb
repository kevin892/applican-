require 'pry'

class NotesController < ApplicationController
  before_action :find_note, only: %i[show edit update destroy]

  def index
    @user = User.last
    if params[:search_term]
   @notes = Note.where("body LIKE ?", "%#{params[:search_term]}%")
 else
   @notes = Note.all
 end

  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @note.user_id = User.last.id
      @note.save
      redirect_to notes_path
  end

  def edit; end

  def show; end

  def update
    @note.update(note_params)
    redirect_to notes_path
  end

  def destroy
    @note.delete
    redirect_to notes_path
  end

  private

  def note_params
    params.require(:note).permit(:title, :body)
  end

  def find_note
    @note = Note.find(params[:id])
  end
end
