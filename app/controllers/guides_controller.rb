class GuidesController < ApplicationController

  def guides
    if params[:search]
      @guides = Guide.search(params[:search]).order("guide_name")
    else
      @guides = Guide.all.order("guide_name")
    end
  end

  def create
    @guide = Guide.new guide_params

    unless guide_params.nil?
      @guide.save
    end
  end

  # def new
  #   @guide = Guide.new
  # end

  def edit
    @guide = Guide.find(params[:id])
  end

  def update
    @guide = Guide.find(params[:id])
      @guide.update!(guide_params)
      redirect_to @guide
  end

  def show
    @guide = Guide.find(params[:id])
  end


  private
    def guide_params
      params.require(:guide).permit(:guide_name, :address, :city, :state, :phone_number)
    end

end
