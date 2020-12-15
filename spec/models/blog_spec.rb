require 'rails_helper'

RSpec.describe Blog, type: :model do

  it "ブログタイトル、ブログ本文がある場合、有効である" do
    blog = Blog.new(
    blog_title: "ruby",
    blog_text: "Hello,world"
    )
    expect(blog).to be_valid
  end

  it "ブログタイトルがない場合、無効である" do
    blog = Blog.new(
    blog_title: nil,
    blog_text: "Hello,world"
    )
    expect(blog.valid?).to eq false;
  end

  it "ブログ本文がない場合、無効である" do
    blog = Blog.new(
    blog_title: "ruby",
    blog_text: nil
    )
    expect(blog.valid?).to eq false;
  end

end