class GuidesController < ApplicationController

  def guides
    if params[:search]
      @guides = Guide.search(params[:search]).order("guide_name")
    else
      @guides = Guide.all.order("guide_name")
    end
  end

end
