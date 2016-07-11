class ComputerGeometriesController < ApplicationController
  before_action :set_computer_geometry, only: [:show, :edit, :update, :destroy]

  # GET /computer_geometries
  # GET /computer_geometries.json
  def index
    @computer_geometries = ComputerGeometry.all
  end

  # GET /computer_geometries/1
  # GET /computer_geometries/1.json
  def show
  end

  # GET /computer_geometries/new
  def new
    @computer_geometry = ComputerGeometry.new
  end

  # GET /computer_geometries/1/edit
  def edit
  end

  # POST /computer_geometries
  # POST /computer_geometries.json
  def create
    @computer_geometry = ComputerGeometry.new(computer_geometry_params)

    respond_to do |format|
      if @computer_geometry.save
        format.html { redirect_to @computer_geometry, notice: 'Computer geometry was successfully created.' }
        format.json { render :show, status: :created, location: @computer_geometry }
      else
        format.html { render :new }
        format.json { render json: @computer_geometry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /computer_geometries/1
  # PATCH/PUT /computer_geometries/1.json
  def update
    respond_to do |format|
      if @computer_geometry.update(computer_geometry_params)
        format.html { redirect_to @computer_geometry, notice: 'Computer geometry was successfully updated.' }
        format.json { render :show, status: :ok, location: @computer_geometry }
      else
        format.html { render :edit }
        format.json { render json: @computer_geometry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /computer_geometries/1
  # DELETE /computer_geometries/1.json
  def destroy
    @computer_geometry.destroy
    respond_to do |format|
      format.html { redirect_to computer_geometries_url, notice: 'Computer geometry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computer_geometry
      @computer_geometry = ComputerGeometry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def computer_geometry_params
      params.require(:computer_geometry).permit(:c_coordinates, :front_point, :computer_id)
    end
end
