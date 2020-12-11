class Directors::BlogCommentsController < ApplicationController
before_action :authenticate_director!
  def create
    @blog = Blog.find(params[:blog_id])
    @blog_comment = BlogComment.new(blog_comment_params)
    @blog_comment.blog_id = @blog.id
    @blog_comment.save
    redirect_to blog_path(@blog)
  end

  def destroy
    BlogComment.find_by(id: params[:id], blog_id: params[:blog_id]).destroy
    redirect_to directors_blog_path(params[:blog_id])
  end

  private
  def blog_comment_params
    params.require(:blog_comment).permit(:comment_name, :blog_comment)
  end
end