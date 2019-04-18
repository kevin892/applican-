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
    @resume.user_id = User.last.id
    if @resume.valid?
      @resume.save
      redirect_to resume_path(@resume)
    else
      render :new
    end
  end

  def edit; end

  def update
    @resume.update(resume_params)
    redirect_to resume_path(@resume)
  end

  def show
    @user = User.last
  end

  private

  def resume_params
    params.require(:resume).permit(:bio, :skills, :school, :degree, :grad_year, :last_job_company, :last_job_title, :last_job_start_date, :last_job_end_date, :last_job_description)
  end

  def find_resume
    @resume = Resume.find(params[:id])
  end
end
