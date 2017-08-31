class CampsitesController < ApplicationController

  def index
    @title = "All Campsites:"
    @campsites = Campsite.all
  end

  def show
    @campsite = Campsite.find(params[:id])
    @title = "Campers bunking in #{@campsite.name} "
    render :show
  end

  def new
    @campsite = Campsite.new
  end

  def create
    @campsite = Campsite.new(campsite_params)

    if @campsite.save
      redirect_to @campsite
    else
      render :new
    end
  end

  private
  def campsite_params
    params.require(:campsite).permit(:name)

  end
end
