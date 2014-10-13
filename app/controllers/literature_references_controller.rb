class LiteratureReferencesController < ApplicationController
  before_action :set_literature_reference, only: [:show, :edit, :update, :destroy]

  # GET /literature_references
  # GET /literature_references.json
  def index
    @literature_references = LiteratureReference.all
  end

  # GET /literature_references/1
  # GET /literature_references/1.json
  def show
  end

  # GET /literature_references/new
  def new
    @literature_reference = LiteratureReference.new
  end

  # GET /literature_references/1/edit
  def edit
  end

  # POST /literature_references
  # POST /literature_references.json
  def create
    @literature_reference = LiteratureReference.new(literature_reference_params)

    respond_to do |format|
      if @literature_reference.save
        format.html { redirect_to @literature_reference, notice: 'Literature reference was successfully created.' }
        format.json { render :show, status: :created, location: @literature_reference }
      else
        format.html { render :new }
        format.json { render json: @literature_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /literature_references/1
  # PATCH/PUT /literature_references/1.json
  def update
    respond_to do |format|
      if @literature_reference.update(literature_reference_params)
        format.html { redirect_to @literature_reference, notice: 'Literature reference was successfully updated.' }
        format.json { render :show, status: :ok, location: @literature_reference }
      else
        format.html { render :edit }
        format.json { render json: @literature_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /literature_references/1
  # DELETE /literature_references/1.json
  def destroy
    @literature_reference.destroy
    respond_to do |format|
      format.html { redirect_to literature_references_url, notice: 'Literature reference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_literature_reference
      @literature_reference = LiteratureReference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def literature_reference_params
      params.require(:literature_reference).permit(:parent_type, :parent_id, :string)
    end
end
