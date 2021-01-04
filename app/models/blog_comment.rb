class BlogComment < ApplicationRecord
  belongs_to :blog

  validates :comment_name, presence: true
  validates :blog_comment, presence: true
end
