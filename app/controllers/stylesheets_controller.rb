class StylesheetsController < ApplicationController
  before_action :set_stylesheet, only: [:show, :edit, :update, :destroy]

  # GET /stylesheets
  # GET /stylesheets.json
  def index
    @stylesheets = Stylesheet.all
  end

  # GET /stylesheets/1
  # GET /stylesheets/1.json
  def show
  end

  # GET /stylesheets/new
  def new
    @stylesheet = Stylesheet.new
  end

  # GET /stylesheets/1/edit
  def edit
  end

  # POST /stylesheets
  # POST /stylesheets.json
  def create
    @stylesheet = Stylesheet.new(stylesheet_params)

    respond_to do |format|
      if @stylesheet.save
        format.html { redirect_to @stylesheet, notice: 'Stylesheet was successfully created.' }
        format.json { render :show, status: :created, location: @stylesheet }
      else
        format.html { render :new }
        format.json { render json: @stylesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stylesheets/1
  # PATCH/PUT /stylesheets/1.json
  def update
    respond_to do |format|
      if @stylesheet.update(stylesheet_params)
        format.html { redirect_to @stylesheet, notice: 'Stylesheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @stylesheet }
      else
        format.html { render :edit }
        format.json { render json: @stylesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stylesheets/1
  # DELETE /stylesheets/1.json
  def destroy
    @stylesheet.destroy
    respond_to do |format|
      format.html { redirect_to stylesheets_url, notice: 'Stylesheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stylesheet
      @stylesheet = Stylesheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stylesheet_params
      params.require(:stylesheet).permit(:name)
    end
end
