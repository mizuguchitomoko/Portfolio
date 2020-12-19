class Directors::BlogsController < ApplicationController
before_action :authenticate_director!
  def index
    @blogs = Blog.page(params[:page]).per(6)
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
    redirect_to directors_blog_path(@blog.id)
    else
      render 'new'
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update(blog_params)
    redirect_to directors_blog_path
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy
    redirect_to directors_blogs_path
  end

  private
  def blog_params
    params.require(:blog).permit(:blog_title, :blog_text, :image)
  end
end
