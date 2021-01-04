class Director < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,#sigin_up機能を無効
         :recoverable, :rememberable, :validatable

  has_many :blogs, dependent: :destroy
  #has_many :active_notifications, class_name: "Notification", foreign_key: "visiter_id", dependent: :destroy
  #has_many :passive_notifications, class_name: "Notification", foreign_key: "visited_id", dependent: :destroy
end
