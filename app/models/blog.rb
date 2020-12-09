class Blog < ApplicationRecord
  belongs_to :derector, optional: true
  attachment :image
  has_many :blog_comments, dependent: :destroy
end
