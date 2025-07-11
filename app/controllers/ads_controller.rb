class AdsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    if params[:query].present?
      q = "%#{params[:query]}%"
      @ads = Ad.where("title ILIKE :q OR description ILIKE :q", q: q)
              .order(created_at: :desc)
      puts "DEBUG: type=#{params[:type]}, query=#{params[:query]}"
    else
      @ads = Ad.all.order(created_at: :desc)
    end
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
      AdMailer.new_ad_notification(@ad).deliver_later
    else
      render :new
    end
  end

  def mark_inactive
    @ad = current_user.ads.find(params[:id])
    @ad.update(status: "nieaktualne")
    redirect_back fallback_location: settings_path, notice: "Ogłoszenie oznaczone jako nieaktualne."
  end

  def mark_active
   @ad = current_user.ads.find(params[:id])
   @ad.update(status: "aktualne")
   redirect_back fallback_location: settings_path, notice: "Ogłoszenie ponownie oznaczone jako aktualne."
  end

  private

  def ad_params
    params.require(:ad).permit(:title, :description, :budget, :location, :category, :status, :contact_method, :ad_type)
  end
end
