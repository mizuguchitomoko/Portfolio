class Notification < ApplicationRecord
  default_scope->{order(created_at: :desc)}
  #optional: trueはでnilを許可
  belongs_to :contact, optional: true
end
