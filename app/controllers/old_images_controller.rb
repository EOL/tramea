class OldImagesController < ApplicationController
  before_action :set_old_image, only: [:show, :edit, :update, :destroy]

  # GET /old_images
  # GET /old_images.json
  def index
    @old_images = OldImage.all
  end

  # GET /old_images/1
  # GET /old_images/1.json
  def show
  end

  # GET /old_images/new
  def new
    @old_image = OldImage.new
  end

  # GET /old_images/1/edit
  def edit
  end

  # POST /old_images
  # POST /old_images.json
  def create
    @old_image = OldImage.new(old_image_params)

    respond_to do |format|
      if @old_image.save
        format.html { redirect_to @old_image, notice: 'Old image was successfully created.' }
        format.json { render :show, status: :created, location: @old_image }
      else
        format.html { render :new }
        format.json { render json: @old_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /old_images/1
  # PATCH/PUT /old_images/1.json
  def update
    respond_to do |format|
      if @old_image.update(old_image_params)
        format.html { redirect_to @old_image, notice: 'Old image was successfully updated.' }
        format.json { render :show, status: :ok, location: @old_image }
      else
        format.html { render :edit }
        format.json { render json: @old_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /old_images/1
  # DELETE /old_images/1.json
  def destroy
    @old_image.destroy
    respond_to do |format|
      format.html { redirect_to old_images_url, notice: 'Old image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_old_image
      @old_image = OldImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def old_image_params
      params.require(:old_image).permit(:guid, :locale, :title, :description, :copyright, :string, :license_id, :original_url, :full_size_url, :crop_url, :thumbnail_url, :image_id)
    end
end
