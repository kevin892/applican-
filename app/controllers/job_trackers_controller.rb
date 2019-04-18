class JobTrackersController < ApplicationController
  before_action :find_job_tracker, only: %i[show edit update destroy]

  def index
    @job_trackers = JobTracker.all
  end

  def new
    @job_tracker = JobTracker.new
  end

  def create
    @job_tracker = JobTracker.new(job_tracker_params)
    @job_tracker.user_id = User.last.id
    if @job_tracker.valid?
      @job_tracker.save
      redirect_to job_trackers_path
    else
      render :new
    end
  end

  def edit; end

  def show
    @user = User.last
  end

  private

  def job_tracker_params
    params.require(:job_tracker).permit(:company, :position, :status, :activity)
  end

  def find_job_tracker
    @job_tracker = JobTracker.find(params[:id])
  end
end
