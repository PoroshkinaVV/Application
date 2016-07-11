class BuildingGeometriesController < ApplicationController
  before_action :set_building_geometry, only: [:show, :edit, :update, :destroy]

  # GET /building_geometries
  # GET /building_geometries.json
  def index
    @building_geometries = BuildingGeometry.all
  end

  # GET /building_geometries/1
  # GET /building_geometries/1.json
  def show
  end

  # GET /building_geometries/new
  def new
    @building_geometry = BuildingGeometry.new
  end

  # GET /building_geometries/1/edit
  def edit
  end

  # POST /building_geometries
  # POST /building_geometries.json
  def create
    @building_geometry = BuildingGeometry.new(building_geometry_params)

    respond_to do |format|
      if @building_geometry.save
        format.html { redirect_to @building_geometry, notice: 'Building geometry was successfully created.' }
        format.json { render :show, status: :created, location: @building_geometry }
      else
        format.html { render :new }
        format.json { render json: @building_geometry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /building_geometries/1
  # PATCH/PUT /building_geometries/1.json
  def update
    respond_to do |format|
      if @building_geometry.update(building_geometry_params)
        format.html { redirect_to @building_geometry, notice: 'Building geometry was successfully updated.' }
        format.json { render :show, status: :ok, location: @building_geometry }
      else
        format.html { render :edit }
        format.json { render json: @building_geometry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /building_geometries/1
  # DELETE /building_geometries/1.json
  def destroy
    @building_geometry.destroy
    respond_to do |format|
      format.html { redirect_to building_geometries_url, notice: 'Building geometry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building_geometry
      @building_geometry = BuildingGeometry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_geometry_params
      params.require(:building_geometry).permit(:b_coordinates, :building_id)
    end
end
