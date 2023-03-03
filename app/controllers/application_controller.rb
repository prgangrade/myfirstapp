class ApplicationController < ActionController::Base
    # before_action :authenticate_user

    # private
    # def authenticate_user
    
    #     return if params[:controller] == "sessions" && params[:action] == "new" || params[:action] == "create"
    #     unless @user = Firstapp.find_by(id: session[:current_user_id])
    
    #         redirect_to "/sessions/new"
    #     end
    # end
   
end
