require 'rails_helper'

RSpec.describe BlogComment, type: :model do

  it "名前、コメントがある場合、有効である" do
    blog = Blog.new
    blog_comment = blog.blog_comments.new(
    comment_name: "アリス",
    blog_comment: "Hello,world",
    )
    expect(blog_comment).to be_valid
  end

  it "名前がない場合、無効である" do
    blog = Blog.new
    blog_comment = blog.blog_comments.new(
    comment_name: nil,
    blog_comment: "Hello,world"
    )
    expect(blog_comment.valid?).to eq false;
  end

  it "コメントがない場合、無効である" do
    blog = Blog.new
    blog_comment = blog.blog_comments.new(
    comment_name: "アリス",
    blog_comment: nil
    )
    expect(blog_comment.valid?).to eq false;
  end
end