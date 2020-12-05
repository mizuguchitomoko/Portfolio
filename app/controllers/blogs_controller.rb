class BlogsController < ApplicationController
  def index
     @blogs = Blog.all
  end

  def about
  end

  def show
    @blog = Blog.find(params[:id])
  end

end
