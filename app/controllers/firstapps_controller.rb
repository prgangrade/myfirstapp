class FirstappsController < ApplicationController
    def index
        @details = Firstapp.all
    end


    def show
        @detail = Firstapp.find(params[:id])
    end

    def new
        @detail = Firstapp.new()
    end

    def create
    
        @detail = Firstapp.new(firstapp_params)
        if @detail.save
            redirect_to '/firstapps'
        end
    end

    def edit
        @detail=Firstapp.find(params[:id])
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
      params.require(:firstapp).permit!
    end

end
