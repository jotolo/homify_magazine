class ArticlesController < ApplicationController
  include SmartListing::Helper::ControllerExtensions
  helper  SmartListing::Helper

  before_action :set_article, only: [:show]
  before_action :set_tag_and_sub_tag_collection, only: [:new, :create]

  def index
    article_scope = Article.order(created_at: :desc)
    article_scope = article_scope.like(params[:filter]) if params[:filter]
    @articles = smart_listing_create(:articles, article_scope, partial: "articles/listing")
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description, :user_id, {tag_ids:[]}, {sub_tag_ids:[]})
  end

  def set_tag_and_sub_tag_collection
    @tags = Tag.all.collect{|t| [t.name, t.id]}
    @sub_tags = SubTag.all.collect{|st| [st.name, st.id]}
  end
end
