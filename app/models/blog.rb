class Blog < ApplicationRecord
  belongs_to :derector, optional: true
  attachment :image
end
