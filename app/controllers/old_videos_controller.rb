class OldVideosController < ApplicationController
  before_action :set_old_video, only: [:show, :edit, :update, :destroy]

  # GET /old_videos
  # GET /old_videos.json
  def index
    @old_videos = OldVideo.all
  end

  # GET /old_videos/1
  # GET /old_videos/1.json
  def show
  end

  # GET /old_videos/new
  def new
    @old_video = OldVideo.new
  end

  # GET /old_videos/1/edit
  def edit
  end

  # POST /old_videos
  # POST /old_videos.json
  def create
    @old_video = OldVideo.new(old_video_params)

    respond_to do |format|
      if @old_video.save
        format.html { redirect_to @old_video, notice: 'Old video was successfully created.' }
        format.json { render :show, status: :created, location: @old_video }
      else
        format.html { render :new }
        format.json { render json: @old_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /old_videos/1
  # PATCH/PUT /old_videos/1.json
  def update
    respond_to do |format|
      if @old_video.update(old_video_params)
        format.html { redirect_to @old_video, notice: 'Old video was successfully updated.' }
        format.json { render :show, status: :ok, location: @old_video }
      else
        format.html { render :edit }
        format.json { render json: @old_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /old_videos/1
  # DELETE /old_videos/1.json
  def destroy
    @old_video.destroy
    respond_to do |format|
      format.html { redirect_to old_videos_url, notice: 'Old video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_old_video
      @old_video = OldVideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def old_video_params
      params.require(:old_video).permit(:guid, :locale, :title, :description, :copyright, :license_id, :original_url, :url, :javascript_id, :stylesheet_id, :video_id)
    end
end
