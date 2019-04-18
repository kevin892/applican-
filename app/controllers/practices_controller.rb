class PracticesController < ApplicationController
  def show
    @practice = Practice.find(params[:id])
  end

  def index
    @practices = Practice.all
  end
end
