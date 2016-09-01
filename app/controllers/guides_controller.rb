class GuidesController < ApplicationController

  def guides
    @guides = Guide.all
  end

end
