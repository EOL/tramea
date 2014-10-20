class AttributionsController < ApplicationController
  before_action :set_attribution, only: [:show, :edit, :update, :destroy]

  # GET /attributions
  # GET /attributions.json
  def index
    @attributions = Attribution.all
  end

  # GET /attributions/1
  # GET /attributions/1.json
  def show
  end

  # GET /attributions/new
  def new
    @attribution = Attribution.new
  end

  # GET /attributions/1/edit
  def edit
  end

  # POST /attributions
  # POST /attributions.json
  def create
    @attribution = Attribution.new(attribution_params)

    respond_to do |format|
      if @attribution.save
        format.html { redirect_to @attribution, notice: 'Collection attribution was successfully created.' }
        format.json { render :show, status: :created, location: @attribution }
      else
        format.html { render :new }
        format.json { render json: @attribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attributions/1
  # PATCH/PUT /attributions/1.json
  def update
    respond_to do |format|
      if @attribution.update(attribution_params)
        format.html { redirect_to @attribution, notice: 'Collection attribution was successfully updated.' }
        format.json { render :show, status: :ok, location: @attribution }
      else
        format.html { render :edit }
        format.json { render json: @attribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attributions/1
  # DELETE /attributions/1.json
  def destroy
    @attribution.destroy
    respond_to do |format|
      format.html { redirect_to attributions_url, notice: 'Collection attribution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attribution
      @attribution = Attribution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attribution_params
      params.require(:attribution).permit(:medium_type, :medium_id, :who, :url, :role_id)
    end
end
