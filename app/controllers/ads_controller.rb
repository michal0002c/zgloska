class AdsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @ads = Ad.all.order(created_at: :desc)
  end

  def show
    @ad = Ad.find(params[:id])
  end

  def new
    @ad = current_user.ads.build
  end

  def create
    @ad = current_user.ads.build(ad_params)
    @ad.published_at = Time.current
    if @ad.save
      redirect_to @ad, notice: "Ogłoszenie zostało dodane."
    else
      render :new
    end
  end

  private

  def ad_params
    params.require(:ad).permit(:title, :description, :budget, :location, :category, :status, :contact_method, :ad_type)
  end
end
