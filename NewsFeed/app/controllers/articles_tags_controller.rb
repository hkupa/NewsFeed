class ArticlesTagsController < ApplicationController
  before_action :set_articles_tag, only: [:show, :edit, :update, :destroy]

  # GET /articles_tags
  # GET /articles_tags.json
  def index
    @articles_tags = ArticlesTag.all
  end

  # GET /articles_tags/1
  # GET /articles_tags/1.json
  def show
  end

  # GET /articles_tags/new
  def new
    @articles_tag = ArticlesTag.new
  end

  # GET /articles_tags/1/edit
  def edit
  end

  # POST /articles_tags
  # POST /articles_tags.json
  def create
    @articles_tag = ArticlesTag.new(articles_tag_params)

    respond_to do |format|
      if @articles_tag.save
        format.html { redirect_to @articles_tag, notice: 'Articles tag was successfully created.' }
        format.json { render :show, status: :created, location: @articles_tag }
      else
        format.html { render :new }
        format.json { render json: @articles_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles_tags/1
  # PATCH/PUT /articles_tags/1.json
  def update
    respond_to do |format|
      if @articles_tag.update(articles_tag_params)
        format.html { redirect_to @articles_tag, notice: 'Articles tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @articles_tag }
      else
        format.html { render :edit }
        format.json { render json: @articles_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles_tags/1
  # DELETE /articles_tags/1.json
  def destroy
    @articles_tag.destroy
    respond_to do |format|
      format.html { redirect_to articles_tags_url, notice: 'Articles tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articles_tag
      @articles_tag = ArticlesTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articles_tag_params
      params.fetch(:articles_tag, {})
    end
end
