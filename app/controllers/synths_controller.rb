class SynthsController < ApplicationController
  before_action :set_synth, only: [:show, :edit, :update, :destroy]

  # GET /synths
  # GET /synths.json
  def index
    @synths = Synth.all
  end

  # GET /synths/1
  # GET /synths/1.json
  def show
  end

  # GET /synths/new
  def new
    @synth = Synth.new
  end

  # GET /synths/1/edit
  def edit
  end

  # POST /synths
  # POST /synths.json
  def create
    @synth = Synth.new(synth_params)

    respond_to do |format|
      if @synth.save
        format.html { redirect_to @synth, notice: 'Synth was successfully created.' }
        format.json { render :show, status: :created, location: @synth }
      else
        format.html { render :new }
        format.json { render json: @synth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /synths/1
  # PATCH/PUT /synths/1.json
  def update
    respond_to do |format|
      if @synth.update(synth_params)
        format.html { redirect_to @synth, notice: 'Synth was successfully updated.' }
        format.json { render :show, status: :ok, location: @synth }
      else
        format.html { render :edit }
        format.json { render json: @synth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /synths/1
  # DELETE /synths/1.json
  def destroy
    @synth.destroy
    respond_to do |format|
      format.html { redirect_to synths_url, notice: 'Synth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_synth
      @synth = Synth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def synth_params
      params[:synth]
    end
end
