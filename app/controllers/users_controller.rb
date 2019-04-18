class UsersController < ApplicationController
  before_action :find_user, only: %i[show]

  def index
    @users = User.all
    redirect_to new_user_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show; end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :linkedin, :github)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
