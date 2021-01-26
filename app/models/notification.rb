class Notification < ApplicationRecord
  default_scope->{order(created_at: :desc)}
  #optional: trueでnilを許可
  belongs_to :contact, optional: true

  #self.メソッド名でクラスメソッドを定義
  def self.confirmed
    #whereメソッドを用いてcheckedカラムがfalseのデータを全て取得
    unchecked_notifications = where(checked: false)
    unchecked_notifications.each do |un|
      #取得したfalseデータをtrueにupdateする
      un.update!(checked: true)
    end
  end
end
