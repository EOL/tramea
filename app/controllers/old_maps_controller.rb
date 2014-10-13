class OldMapsController < ApplicationController
  before_action :set_old_map, only: [:show, :edit, :update, :destroy]

  # GET /old_maps
  # GET /old_maps.json
  def index
    @old_maps = OldMap.all
  end

  # GET /old_maps/1
  # GET /old_maps/1.json
  def show
  end

  # GET /old_maps/new
  def new
    @old_map = OldMap.new
  end

  # GET /old_maps/1/edit
  def edit
  end

  # POST /old_maps
  # POST /old_maps.json
  def create
    @old_map = OldMap.new(old_map_params)

    respond_to do |format|
      if @old_map.save
        format.html { redirect_to @old_map, notice: 'Old map was successfully created.' }
        format.json { render :show, status: :created, location: @old_map }
      else
        format.html { render :new }
        format.json { render json: @old_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /old_maps/1
  # PATCH/PUT /old_maps/1.json
  def update
    respond_to do |format|
      if @old_map.update(old_map_params)
        format.html { redirect_to @old_map, notice: 'Old map was successfully updated.' }
        format.json { render :show, status: :ok, location: @old_map }
      else
        format.html { render :edit }
        format.json { render json: @old_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /old_maps/1
  # DELETE /old_maps/1.json
  def destroy
    @old_map.destroy
    respond_to do |format|
      format.html { redirect_to old_maps_url, notice: 'Old map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_old_map
      @old_map = OldMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def old_map_params
      params.require(:old_map).permit(:guid, :locale, :preview, :title, :description, :copyright, :license_id, :original_url, :full_size_url, :crop_url, :thumbnail_url, :javascript_id, :stylesheet_id, :map_id)
    end
end
