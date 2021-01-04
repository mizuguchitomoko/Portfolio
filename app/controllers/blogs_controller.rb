class BlogsController < ApplicationController
  def index
     @blogs = Blog.page(params[:page]).per(6)
  end

  def about
  end

  def show
    @blog = Blog.find(params[:id])
    @blog_comment = BlogComment.new
  end

end
