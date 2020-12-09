class BlogCommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @blog_comment = BlogComment.new(blog_comment_params)
    @blog_comment.blog_id = @blog.id
    @blog_comment.save
    redirect_to blog_path(@blog)
  end

  def destroy
  end

  private
  def blog_comment_params
    params.require(:blog_comment).permit(:comment_name, :blog_comment)
  end
end
