class SecionsController < ApplicationController
  before_action :set_secion, only: [:show, :edit, :update, :destroy]

  # GET /secions
  # GET /secions.json
  def index
    @secions = Secion.all
  end

  # GET /secions/1
  # GET /secions/1.json
  def show
  end

  # GET /secions/new
  def new
    @secion = Secion.new
  end

  # GET /secions/1/edit
  def edit
  end

  # POST /secions
  # POST /secions.json
  def create
    @secion = Secion.new(secion_params)

    respond_to do |format|
      if @secion.save
        format.html { redirect_to @secion, notice: 'Secion was successfully created.' }
        format.json { render :show, status: :created, location: @secion }
      else
        format.html { render :new }
        format.json { render json: @secion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secions/1
  # PATCH/PUT /secions/1.json
  def update
    respond_to do |format|
      if @secion.update(secion_params)
        format.html { redirect_to @secion, notice: 'Secion was successfully updated.' }
        format.json { render :show, status: :ok, location: @secion }
      else
        format.html { render :edit }
        format.json { render json: @secion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secions/1
  # DELETE /secions/1.json
  def destroy
    @secion.destroy
    respond_to do |format|
      format.html { redirect_to secions_url, notice: 'Secion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secion
      @secion = Secion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def secion_params
      params.require(:secion).permit(:type, :position, :parent_id)
    end
end
