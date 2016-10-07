class SubsectorsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @subsectors = Subsector.all
  end

  def show
    @subsector = Subsector.find(params[:id])
    @planets = @subsector.planets.order(sort_column + ' ' + sort_direction)
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

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end

  def sort_column
    Planet.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
end
