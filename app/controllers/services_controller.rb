class ServicesController < ApplicationController
  def show
    @service = Service.find(params[:id]);
  end

  def new
    @service = Service.new
  end

  def index
    @services = Service.all
  end
  
  def create
    @service = Service.new(params.require(:service).permit(:name, :base_cost))

    if @service.save
      redirect_to @service
    else 
      render 'new'
    end
  end
end
