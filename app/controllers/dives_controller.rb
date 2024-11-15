class DivesController < ApplicationController
  before_action :set_dive, only: %i[ show edit update destroy ]

  # GET /dives or /dives.json
  def index
    @dives = Dive.all
  end

  # GET /dives/1 or /dives/1.json
  def show
  end

  # GET /dives/new
  def new
    @dive = Dive.new
    @dive.build_dive_location
  end

  # GET /dives/1/edit
  def edit
  end

  # POST /dives or /dives.json
  def create
    @dive = Dive.new(dive_params)

    respond_to do |format|
      if @dive.save
        format.html { redirect_to @dive, notice: "Dive was successfully created." }
        format.json { render :show, status: :created, location: @dive }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dives/1 or /dives/1.json
  def update
    respond_to do |format|
      if @dive.update(dive_params)
        format.html { redirect_to @dive, notice: "Dive was successfully updated." }
        format.json { render :show, status: :ok, location: @dive }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dives/1 or /dives/1.json
  def destroy
    @dive.destroy!

    respond_to do |format|
      format.html { redirect_to dives_path, status: :see_other, notice: "Dive was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dive
      @dive = Dive.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def dive_params
      p = params.require(:dive).permit(
        :diver,
        :date,
        :dive_location_id,
        dive_location_attributes: [ :site_name, :location_type, :latitude, :longitude ]
      )

      if params[:dive][:location_selection] == "existing"
        p[:dive_location_attributes] = {}
      end

      p
    end
end
