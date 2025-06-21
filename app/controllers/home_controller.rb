class HomeController < ApplicationController
  def index
      @ads = Ad.order(created_at: :desc).limit(3)
  end
end
