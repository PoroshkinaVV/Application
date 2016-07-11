class AuditoryGeometriesController < ApplicationController
  before_action :set_auditory_geometry, only: [:show, :edit, :update, :destroy]

  # GET /auditory_geometries
  # GET /auditory_geometries.json
  def index
    @auditory_geometries = AuditoryGeometry.all
  end

  # GET /auditory_geometries/1
  # GET /auditory_geometries/1.json
  def show
  end

  # GET /auditory_geometries/new
  def new
    @auditory_geometry = AuditoryGeometry.new
  end

  # GET /auditory_geometries/1/edit
  def edit
  end

  # POST /auditory_geometries
  # POST /auditory_geometries.json
  def create
    @auditory_geometry = AuditoryGeometry.new(auditory_geometry_params)

    respond_to do |format|
      if @auditory_geometry.save
        format.html { redirect_to @auditory_geometry, notice: 'Auditory geometry was successfully created.' }
        format.json { render :show, status: :created, location: @auditory_geometry }
      else
        format.html { render :new }
        format.json { render json: @auditory_geometry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auditory_geometries/1
  # PATCH/PUT /auditory_geometries/1.json
  def update
    respond_to do |format|
      if @auditory_geometry.update(auditory_geometry_params)
        format.html { redirect_to @auditory_geometry, notice: 'Auditory geometry was successfully updated.' }
        format.json { render :show, status: :ok, location: @auditory_geometry }
      else
        format.html { render :edit }
        format.json { render json: @auditory_geometry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auditory_geometries/1
  # DELETE /auditory_geometries/1.json
  def destroy
    @auditory_geometry.destroy
    respond_to do |format|
      format.html { redirect_to auditory_geometries_url, notice: 'Auditory geometry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auditory_geometry
      @auditory_geometry = AuditoryGeometry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auditory_geometry_params
      params.require(:auditory_geometry).permit(:a_coordinates, :auditory_id)
    end
end
