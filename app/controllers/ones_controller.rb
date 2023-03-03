class OnesController < ApplicationController
    def index
    @vars= One.all
    end

    def new
        @var = One.new()
    
    end

    def create
        byebug
        @var = One.new(one_params)
        if @var.save!
            redirect_to "/ones"
        end
    end

   private
   def one_params
    params.require(:one).permit!
   end
      
end
