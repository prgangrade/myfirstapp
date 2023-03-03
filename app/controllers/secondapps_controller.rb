class SecondappsController < ApplicationController
  def index
  end

  def new
    @var = Secondapp.new
  end

  def create
    @var = Secondapp.new(second_params)
    if @var.save!
      redirect_to "/secondapps"
    end
  end
  

  def second_params

     params.require(:secondapp).permit!
  end
end