class HomeController < ApplicationController
  before_action :authenticate_user!  
  
  def index
      @ads = Ad.order(created_at: :desc).limit(3)
  end
end
