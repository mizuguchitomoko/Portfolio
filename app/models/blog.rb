class Blog < ApplicationRecord
  belongs_to :derector, optional: true
  attachment :image
  has_many :blog_comments, dependent: :destroy

  validates :blog_title, presence: true
  validates :blog_text, presence: true
end
