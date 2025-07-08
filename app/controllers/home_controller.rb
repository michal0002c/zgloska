class HomeController < ApplicationController
  before_action :authenticate_user!  
  
  def index
    @ads = Ad.where(status: "aktualne").order(created_at: :desc).limit(3)
  end
end
