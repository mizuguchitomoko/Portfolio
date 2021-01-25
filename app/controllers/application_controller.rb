class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    #ログイン後の遷移先はdirector側のブログ一覧に固定
    directors_blogs_path
  end
  before_action :check_notifications
  def check_notifications
    #未確認の通知(checked:falseの通知)を示すunchecked_notificationsメソッド
    @unchecked_notifications = Notification.where(checked:false)
  end
end
