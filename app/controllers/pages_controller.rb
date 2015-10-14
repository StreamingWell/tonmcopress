class PagesController < ApplicationController
  
  #remove this before deploying to production
  before_filter :authenticate  
  
  def home
    @home_page = true
  end

  def live
    @message = Message.new
  end

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
    username == "admin" && password == "orlandoitc"
   end
  end

end
