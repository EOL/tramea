class OldSoundsController < ApplicationController
  before_action :set_old_sound, only: [:show, :edit, :update, :destroy]

  # GET /old_sounds
  # GET /old_sounds.json
  def index
    @old_sounds = OldSound.all
  end

  # GET /old_sounds/1
  # GET /old_sounds/1.json
  def show
  end

  # GET /old_sounds/new
  def new
    @old_sound = OldSound.new
  end

  # GET /old_sounds/1/edit
  def edit
  end

  # POST /old_sounds
  # POST /old_sounds.json
  def create
    @old_sound = OldSound.new(old_sound_params)

    respond_to do |format|
      if @old_sound.save
        format.html { redirect_to @old_sound, notice: 'Old sound was successfully created.' }
        format.json { render :show, status: :created, location: @old_sound }
      else
        format.html { render :new }
        format.json { render json: @old_sound.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /old_sounds/1
  # PATCH/PUT /old_sounds/1.json
  def update
    respond_to do |format|
      if @old_sound.update(old_sound_params)
        format.html { redirect_to @old_sound, notice: 'Old sound was successfully updated.' }
        format.json { render :show, status: :ok, location: @old_sound }
      else
        format.html { render :edit }
        format.json { render json: @old_sound.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /old_sounds/1
  # DELETE /old_sounds/1.json
  def destroy
    @old_sound.destroy
    respond_to do |format|
      format.html { redirect_to old_sounds_url, notice: 'Old sound was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_old_sound
      @old_sound = OldSound.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def old_sound_params
      params.require(:old_sound).permit(:guid, :locale, :preview, :title, :description, :copyright, :license_id, :original_url, :url, :javascript_id, :stylesheet_id, :sound_id)
    end
end
