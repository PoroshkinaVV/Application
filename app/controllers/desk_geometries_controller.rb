class DeskGeometriesController < ApplicationController
  before_action :set_desk_geometry, only: [:show, :edit, :update, :destroy]

  # GET /desk_geometries
  # GET /desk_geometries.json
  def index
    @desk_geometries = DeskGeometry.all
  end

  # GET /desk_geometries/1
  # GET /desk_geometries/1.json
  def show
  end

  # GET /desk_geometries/new
  def new
    @desk_geometry = DeskGeometry.new
  end

  # GET /desk_geometries/1/edit
  def edit
  end

  # POST /desk_geometries
  # POST /desk_geometries.json
  def create
    @desk_geometry = DeskGeometry.new(desk_geometry_params)

    respond_to do |format|
      if @desk_geometry.save
        format.html { redirect_to @desk_geometry, notice: 'Desk geometry was successfully created.' }
        format.json { render :show, status: :created, location: @desk_geometry }
      else
        format.html { render :new }
        format.json { render json: @desk_geometry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desk_geometries/1
  # PATCH/PUT /desk_geometries/1.json
  def update
    respond_to do |format|
      if @desk_geometry.update(desk_geometry_params)
        format.html { redirect_to @desk_geometry, notice: 'Desk geometry was successfully updated.' }
        format.json { render :show, status: :ok, location: @desk_geometry }
      else
        format.html { render :edit }
        format.json { render json: @desk_geometry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desk_geometries/1
  # DELETE /desk_geometries/1.json
  def destroy
    @desk_geometry.destroy
    respond_to do |format|
      format.html { redirect_to desk_geometries_url, notice: 'Desk geometry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desk_geometry
      @desk_geometry = DeskGeometry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desk_geometry_params
      params.require(:desk_geometry).permit(:d_coordinates, :front_point, :desk_id)
    end
end
