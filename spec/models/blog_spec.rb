require 'rails_helper'

RSpec.describe Blog, type: :model do
  context "データが正しく保存される" do
    before do
      @blog = Blog.new
      @blog.blog_title = "Hello World"
      @blog.blog_text = "今日も晴れです。"
      @blog.save
    end
  end
end