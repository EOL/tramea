class JavascriptsController < ApplicationController
  before_action :set_javascript, only: [:show, :edit, :update, :destroy]

  # GET /javascripts
  # GET /javascripts.json
  def index
    @javascripts = Javascript.all
  end

  # GET /javascripts/1
  # GET /javascripts/1.json
  def show
  end

  # GET /javascripts/new
  def new
    @javascript = Javascript.new
  end

  # GET /javascripts/1/edit
  def edit
  end

  # POST /javascripts
  # POST /javascripts.json
  def create
    @javascript = Javascript.new(javascript_params)

    respond_to do |format|
      if @javascript.save
        format.html { redirect_to @javascript, notice: 'Javascript was successfully created.' }
        format.json { render :show, status: :created, location: @javascript }
      else
        format.html { render :new }
        format.json { render json: @javascript.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /javascripts/1
  # PATCH/PUT /javascripts/1.json
  def update
    respond_to do |format|
      if @javascript.update(javascript_params)
        format.html { redirect_to @javascript, notice: 'Javascript was successfully updated.' }
        format.json { render :show, status: :ok, location: @javascript }
      else
        format.html { render :edit }
        format.json { render json: @javascript.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /javascripts/1
  # DELETE /javascripts/1.json
  def destroy
    @javascript.destroy
    respond_to do |format|
      format.html { redirect_to javascripts_url, notice: 'Javascript was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_javascript
      @javascript = Javascript.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def javascript_params
      params.require(:javascript).permit(:name)
    end
end
