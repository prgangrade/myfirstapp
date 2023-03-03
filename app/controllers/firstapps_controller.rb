class FirstappsController < ApplicationController
    layout "new", except: [:index, :show]
    def index
        @details = Firstapp.all
        
        
        # render js: "alert('Hello Rails');"
        # render formats: "json"

        #  render json: @details
    
        
    end



   



    def search
    
   
        @details = Firstapp.where("name LIKE ?","%" + params[:na] + "%")
         # render json: @details
        # render layout: "new"
    end

    def show
         @detail = Firstapp.find(params[:id])
         
        #  @detail = Firstapp.all
        # render inline: "<%@detail.each do |var| %><%= var.name %><br><% end %>"
        # render "symbol"
    end

    def new
        @detail = Firstapp.new()
        @detail.secondapps.build
    end

    def create
        byebug
        @detail = Firstapp.new(firstapp_params)
        if @detail.save
            flash[:notice] = "created succesfully"
            redirect_to "/firstapps"
        end
        #     render "one" and return
        
        # end
        # render "two"
         
        
    end

    def edit
        @detail=Firstapp.find(params[:id])
        # @detail.secondapps.build
    end
    def update
        @detail=Firstapp.find(params[:id])
        if @detail.update(firstapp_params)
            redirect_to '/firstapps'
        end
    end


    def destroy
       @detail=Firstapp.find(params[:id])
       @detail.destroy
         
    
    end
    private
    def firstapp_params
      params.require(:firstapp).permit(:name, secpndapps_attributes: [:id, :name])
    end

end
