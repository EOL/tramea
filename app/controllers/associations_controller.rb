class AssociationsController < ApplicationController
  before_action :set_association, only: [:show, :edit, :update, :destroy]

  # GET /associations
  # GET /associations.json
  def index
    @associations = Association.all
  end

  # GET /associations/1
  # GET /associations/1.json
  def show
  end

  # GET /associations/new
  def new
    @association = Association.new
  end

  # GET /associations/1/edit
  def edit
  end

  # POST /associations
  # POST /associations.json
  def create
    @association = Association.new(association_params)

    respond_to do |format|
      if @association.save
        format.html { redirect_to @association, notice: 'Association was successfully created.' }
        format.json { render :show, status: :created, location: @association }
      else
        format.html { render :new }
        format.json { render json: @association.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /associations/1
  # PATCH/PUT /associations/1.json
  def update
    respond_to do |format|
      if @association.update(association_params)
        format.html { redirect_to @association, notice: 'Association was successfully updated.' }
        format.json { render :show, status: :ok, location: @association }
      else
        format.html { render :edit }
        format.json { render json: @association.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associations/1
  # DELETE /associations/1.json
  def destroy
    @association.destroy
    respond_to do |format|
      format.html { redirect_to associations_url, notice: 'Association was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_association
      @association = Association.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def association_params
      params.require(:association).permit(:parent_type, :parent_id, :child_type, :child_id, :trusted, :reviewed, :visible, :overview, :position, :rating, :num_ratings)
    end
end
