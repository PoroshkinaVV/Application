class AuditoriesController < ApplicationController
  before_action :set_auditory, only: [:show, :edit, :update, :destroy]

  # GET /auditories
  # GET /auditories.json
  def index
    @auditories = Auditory.all
  end

  # GET /auditories/1
  # GET /auditories/1.json
  def show
  end

  # GET /auditories/new
  def new
    @auditory = Auditory.new
  end

  # GET /auditories/1/edit
  def edit
  end

  # POST /auditories
  # POST /auditories.json
  def create
    @auditory = Auditory.new(auditory_params)

    respond_to do |format|
      if @auditory.save
        format.html { redirect_to @auditory, notice: 'Auditory was successfully created.' }
        format.json { render :show, status: :created, location: @auditory }
      else
        format.html { render :new }
        format.json { render json: @auditory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auditories/1
  # PATCH/PUT /auditories/1.json
  def update
    respond_to do |format|
      if @auditory.update(auditory_params)
        format.html { redirect_to @auditory, notice: 'Auditory was successfully updated.' }
        format.json { render :show, status: :ok, location: @auditory }
      else
        format.html { render :edit }
        format.json { render json: @auditory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auditories/1
  # DELETE /auditories/1.json
  def destroy
    @auditory.destroy
    respond_to do |format|
      format.html { redirect_to auditories_url, notice: 'Auditory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auditory
      @auditory = Auditory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auditory_params
      params.require(:auditory).permit(:name, :building_id)
    end
end
