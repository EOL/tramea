class TraitsController < ApplicationController
  before_action :set_trait, only: [:show, :edit, :update, :destroy]

  # GET /traits
  # GET /traits.json
  def index
    @traits = Trait.all
  end

  # GET /traits/1
  # GET /traits/1.json
  def show
  end

  # GET /traits/new
  def new
    @trait = Trait.new
  end

  # GET /traits/1/edit
  def edit
  end

  # POST /traits
  # POST /traits.json
  def create
    @trait = Trait.new(trait_params)

    respond_to do |format|
      if @trait.save
        format.html { redirect_to @trait, notice: 'Trait was successfully created.' }
        format.json { render :show, status: :created, location: @trait }
      else
        format.html { render :new }
        format.json { render json: @trait.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /traits/1
  # PATCH/PUT /traits/1.json
  def update
    respond_to do |format|
      if @trait.update(trait_params)
        format.html { redirect_to @trait, notice: 'Trait was successfully updated.' }
        format.json { render :show, status: :ok, location: @trait }
      else
        format.html { render :edit }
        format.json { render json: @trait.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traits/1
  # DELETE /traits/1.json
  def destroy
    @trait.destroy
    respond_to do |format|
      format.html { redirect_to traits_url, notice: 'Trait was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trait
      @trait = Trait.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trait_params
      params.require(:trait).permit(:subject_type, :subject_id, :original_predicate_name, :predicate_uri_id, :value, :text, :object_uri_id, :units, :original_units_uri_id)
    end
end
