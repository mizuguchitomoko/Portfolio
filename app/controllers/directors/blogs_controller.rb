class Directors::BlogsController < ApplicationController
#before_action :authenticate_director!
  def index
    @blogs = Blog.all
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.new(blog_params)
    blog.save!
    redirect_to directors_blogs_path#あとでshowに変更
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def blog_params
    params.require(:blog).permit(:blog_title, :blog_text, :image)
  end
end
