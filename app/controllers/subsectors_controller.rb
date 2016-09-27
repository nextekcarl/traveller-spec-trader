class SubsectorsController < ApplicationController

  def index
    @subsectors = Subsector.all
  end

  def show
    @subsector = Subsector.find(params[:id])
  end
end
