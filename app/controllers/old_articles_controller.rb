class OldArticlesController < ApplicationController
  before_action :set_old_article, only: [:show, :edit, :update, :destroy]

  # GET /old_articles
  # GET /old_articles.json
  def index
    @old_articles = OldArticle.all
  end

  # GET /old_articles/1
  # GET /old_articles/1.json
  def show
  end

  # GET /old_articles/new
  def new
    @old_article = OldArticle.new
  end

  # GET /old_articles/1/edit
  def edit
  end

  # POST /old_articles
  # POST /old_articles.json
  def create
    @old_article = OldArticle.new(old_article_params)

    respond_to do |format|
      if @old_article.save
        format.html { redirect_to @old_article, notice: 'Old article was successfully created.' }
        format.json { render :show, status: :created, location: @old_article }
      else
        format.html { render :new }
        format.json { render json: @old_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /old_articles/1
  # PATCH/PUT /old_articles/1.json
  def update
    respond_to do |format|
      if @old_article.update(old_article_params)
        format.html { redirect_to @old_article, notice: 'Old article was successfully updated.' }
        format.json { render :show, status: :ok, location: @old_article }
      else
        format.html { render :edit }
        format.json { render json: @old_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /old_articles/1
  # DELETE /old_articles/1.json
  def destroy
    @old_article.destroy
    respond_to do |format|
      format.html { redirect_to old_articles_url, notice: 'Old article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_old_article
      @old_article = OldArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def old_article_params
      params.require(:old_article).permit(:guid, :locale, :preview, :section_id, :title, :body, :copyright, :license_id, :original_url, :javascript_id, :stylesheet_id, :article_id)
    end
end
