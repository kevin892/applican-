class ResumesController < ApplicationController
  before_action :find_resume, only: %i[show edit update destroy]

  def index
    @resumes = Resume.all
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)
    if @resume.valid?
      @resume.save
    else
      render :new
    end
  end

  def edit; end

  def show; end

  private

  def resume_params
    params.require(:resume).permit(:email, :first_name, :last_name, :linkedin, :github)
  end

  def find_resume
    @resume = Resume.find(params[:id])
  end
end
