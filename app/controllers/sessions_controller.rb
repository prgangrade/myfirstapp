class SessionsController < ApplicationController


  USERS = { "lifo" => "world" }

  before_action :authenticate

  private
    def authenticate
      authenticate_or_request_with_http_digest do |username|
        USERS[username]
      end
    end


  
  def index
    
  end

  def new
    @detail = Firstapp.new()
    
  end

  def create
    
    if (@first = Firstapp.find_by(email: params[:email]))
      session[:current_user_id] = @first.id
      # flash[:note] = "you are logged in"
      redirect_to root_path, flash: {referral: "you are logged in"}
    else
     
      render "new" 
    end
  end

  def show
    session[:current_user_id] = nil
    redirect_to "/sessions/new", notice: "you are logged out"
  end
end
