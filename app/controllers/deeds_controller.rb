class DeedsController < ApplicationController
  before_action :set_deed, only: [:show, :edit, :update, :destroy]

  # GET /deeds
  # GET /deeds.json
  def index
    @deeds = Deed.all
  end

  # GET /deeds/1
  # GET /deeds/1.json
  def show
  end

  # GET /deeds/new
  def new
    @deed = Deed.new
  end

  # GET /deeds/1/edit
  def edit
  end

  # POST /deeds
  # POST /deeds.json
  def create
    @deed = Deed.new(deed_params)

    respond_to do |format|
      if @deed.save
        format.html { redirect_to @deed, notice: 'Deed was successfully created.' }
        format.json { render :show, status: :created, location: @deed }
      else
        format.html { render :new }
        format.json { render json: @deed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deeds/1
  # PATCH/PUT /deeds/1.json
  def update
    respond_to do |format|
      if @deed.update(deed_params)
        format.html { redirect_to @deed, notice: 'Deed was successfully updated.' }
        format.json { render :show, status: :ok, location: @deed }
      else
        format.html { render :edit }
        format.json { render json: @deed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deeds/1
  # DELETE /deeds/1.json
  def destroy
    @deed.destroy
    respond_to do |format|
      format.html { redirect_to deeds_url, notice: 'Deed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deed
      @deed = Deed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deed_params
      params.require(:deed).permit(:name, :description, :location_id)
    end
end
