class SubsectorsController < ApplicationController
  def index
    @subsectors = Subsector.all
  end

  def show
    @subsector = Subsector.find(params[:id])
  end

  def new
    @subsector = Subsector.new
  end

  def create
    @subsector = Subsector.new(sanitized_params(params[:subsector]))
    if @subsector.save
      redirect_to subsectors_path, notice: "Subsector #{@subsector.name} successfully created!"
    else
      render :new, error: "Subsector creation failed, recheck your text formatting"
    end
  end

  private

  def sanitized_params(params)
    params.permit(:name, :uwp, :description)
  end
end
