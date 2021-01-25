class Notification < ApplicationRecord
  default_scope->{order(created_at: :desc)}
  #optional: trueはでnilを許可
  belongs_to :contact, optional: true

  #クラスメソッド
  def self.confirmed
    #checkedがfalseのデータを取得
    unchecked_notifications = where(checked: false)
    #trueにupdateする
    unchecked_notifications.each do |un|
      un.update!(checked: true)
    end
    unchecked_notifications
  end
  def self.checked_count
    #unchecked_notificationsの数を返す
    confirmed.count
  end
end
