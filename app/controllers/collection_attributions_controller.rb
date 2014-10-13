class CollectionAttributionsController < ApplicationController
  before_action :set_collection_attribution, only: [:show, :edit, :update, :destroy]

  # GET /collection_attributions
  # GET /collection_attributions.json
  def index
    @collection_attributions = CollectionAttribution.all
  end

  # GET /collection_attributions/1
  # GET /collection_attributions/1.json
  def show
  end

  # GET /collection_attributions/new
  def new
    @collection_attribution = CollectionAttribution.new
  end

  # GET /collection_attributions/1/edit
  def edit
  end

  # POST /collection_attributions
  # POST /collection_attributions.json
  def create
    @collection_attribution = CollectionAttribution.new(collection_attribution_params)

    respond_to do |format|
      if @collection_attribution.save
        format.html { redirect_to @collection_attribution, notice: 'Collection attribution was successfully created.' }
        format.json { render :show, status: :created, location: @collection_attribution }
      else
        format.html { render :new }
        format.json { render json: @collection_attribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collection_attributions/1
  # PATCH/PUT /collection_attributions/1.json
  def update
    respond_to do |format|
      if @collection_attribution.update(collection_attribution_params)
        format.html { redirect_to @collection_attribution, notice: 'Collection attribution was successfully updated.' }
        format.json { render :show, status: :ok, location: @collection_attribution }
      else
        format.html { render :edit }
        format.json { render json: @collection_attribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collection_attributions/1
  # DELETE /collection_attributions/1.json
  def destroy
    @collection_attribution.destroy
    respond_to do |format|
      format.html { redirect_to collection_attributions_url, notice: 'Collection attribution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collection_attribution
      @collection_attribution = CollectionAttribution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collection_attribution_params
      params.require(:collection_attribution).permit(:medium_type, :medium_id, :who, :url, :role_id)
    end
end
