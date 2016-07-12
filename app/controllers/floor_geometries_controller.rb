class FloorGeometriesController < ApplicationController
  before_action :set_floor_geometry, only: [:show, :edit, :update, :destroy]

  # GET /floor_geometries
  # GET /floor_geometries.json
  def index
    @floor_geometries = FloorGeometry.all
  end

  # GET /floor_geometries/1
  # GET /floor_geometries/1.json
  def show
  end

  # GET /floor_geometries/new
  def new
    @floor_geometry = FloorGeometry.new
  end

  # GET /floor_geometries/1/edit
  def edit
  end

  # POST /floor_geometries
  # POST /floor_geometries.json
  def create
    @floor_geometry = FloorGeometry.new(floor_geometry_params)

    respond_to do |format|
      if @floor_geometry.save
        format.html { redirect_to @floor_geometry, notice: 'Floor geometry was successfully created.' }
        format.json { render :show, status: :created, location: @floor_geometry }
      else
        format.html { render :new }
        format.json { render json: @floor_geometry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /floor_geometries/1
  # PATCH/PUT /floor_geometries/1.json
  def update
    respond_to do |format|
      if @floor_geometry.update(floor_geometry_params)
        format.html { redirect_to @floor_geometry, notice: 'Floor geometry was successfully updated.' }
        format.json { render :show, status: :ok, location: @floor_geometry }
      else
        format.html { render :edit }
        format.json { render json: @floor_geometry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /floor_geometries/1
  # DELETE /floor_geometries/1.json
  def destroy
    @floor_geometry.destroy
    respond_to do |format|
      format.html { redirect_to floor_geometries_url, notice: 'Floor geometry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_floor_geometry
      @floor_geometry = FloorGeometry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def floor_geometry_params
      params.require(:floor_geometry).permit(:f_coordinates, :floor_id)
    end
end
