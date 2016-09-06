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

  def new
    @guide = Guide.new
  end

  def edit
  end

  def show
  end


end
