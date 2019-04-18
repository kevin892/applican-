require 'pry'

class NotesController < ApplicationController
  before_action :find_note, only: %i[show edit update destroy]

  def index
    @user = User.last
    @notes = Note.all
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

  private

  def note_params
    params.require(:note).permit(:title, :body)
  end

  def find_note
    @note = Note.find(params[:id])
  end
end
